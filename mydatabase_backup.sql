-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cityresort_prod
-- ------------------------------------------------------
-- Server version	10.3.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accesses`
--

DROP TABLE IF EXISTS `accesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesses`
--

LOCK TABLES `accesses` WRITE;
/*!40000 ALTER TABLE `accesses` DISABLE KEYS */;
INSERT INTO `accesses` VALUES (1,'1','1',NULL,NULL,NULL,'2021-07-15 06:51:51','2021-07-15 06:51:51',NULL,NULL);
/*!40000 ALTER TABLE `accesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_flows`
--

DROP TABLE IF EXISTS `approval_flows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval_flows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_form` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_role_property` int(11) DEFAULT NULL,
  `approval_1` int(11) DEFAULT NULL,
  `approval_2` int(11) DEFAULT NULL,
  `approval_3` int(11) DEFAULT NULL,
  `approval_4` int(11) DEFAULT NULL,
  `approval_5` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_flows`
--

LOCK TABLES `approval_flows` WRITE;
/*!40000 ALTER TABLE `approval_flows` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_flows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approve_histories`
--

DROP TABLE IF EXISTS `approve_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approve_histories` (
  `id_record` varchar(255) DEFAULT NULL,
  `id_users` varchar(255) DEFAULT NULL,
  `approve` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approve_histories`
--

LOCK TABLES `approve_histories` WRITE;
/*!40000 ALTER TABLE `approve_histories` DISABLE KEYS */;
INSERT INTO `approve_histories` VALUES ('10','13','true','2021-12-30 05:34:52','di gagalkan','switch_permission',1),('10','10','true','2021-12-30 07:58:11','Saya Setuju','switch_permission',2),('10','10','true','2021-12-30 07:59:05','Saya Setuju','switch_permission',3),('10','7','true','2021-12-30 08:00:00','Saya Setuju','switch_permission',4),('10','7','true','2021-12-30 10:55:30','Saya Setuju','switch_permission',5),('10','10','true','2021-12-30 10:57:34','Saya Setuju','switch_permission',6),('10','7','true','2021-12-30 11:00:00','Saya Setuju','switch_permission',7),('10','8','true','2021-12-30 11:00:44','Saya Setuju','switch_permission',8),('10','13','true','2021-12-30 11:01:49','Saya Setuju','switch_permission',9),('10','6','true','2021-12-30 11:02:33','Saya Setuju','switch_permission',10),('10','13','true','2021-12-30 11:12:28','Saya Setuju','switch_permission',11),('10','13','true','2021-12-30 11:12:50','Saya Setuju','switch_permission',12),('10','10','true','2021-12-30 11:16:03','Saya Setuju','switch_permission',13),('10','7','true','2021-12-30 11:17:27','Saya Setuju','switch_permission',14),('10','8','true','2021-12-30 11:18:34','Saya Setuju','switch_permission',15),('10','13','true','2021-12-30 11:24:10','Saya Setuju','switch_permission',16),('10','6','true','2021-12-30 11:25:43','Saya Setuju','switch_permission',17),('10','10','true','2021-12-30 12:17:16','Saya Setuju','switch_permission',18),('10','7','false','2021-12-30 12:33:54','Saya tidak Menyetujui','switch_permission',19),('10','10','true','2021-12-30 13:08:07','Saya Menyetujui','switch_permission',20),('10','10','true','2021-12-30 13:11:30','Saya Menyetujui','switch_permission',21),('10','10','true','2021-12-30 13:13:11','Saya Menyetujui','switch_permission',22),('10','10','true','2021-12-31 03:39:18','Saya Menyetujui','switch_permission',23),('10','10','true','2021-12-31 03:42:02','Saya Menyetujui','switch_permission',24),('11','10','true','2021-12-31 06:44:15','test description','switch_permission',25),('12','10','true','2021-12-31 07:44:54','test buat ke danru','switch_permission',26),('12','7','true','2021-12-31 07:45:36','Test ke danru 2','switch_permission',27),('12','8','true','2021-12-31 07:46:38','test','switch_permission',28),('12','13','true','2021-12-31 07:47:58','Test ke dansek','switch_permission',29),('12','6','true','2021-12-31 07:48:14','sukses','switch_permission',30),('14','10','true','2022-01-09 14:55:18','Ok','switch_permission',31),('14','7','true','2022-01-09 14:58:52','approval tahap 2','switch_permission',32),('14','8','true','2022-01-09 14:59:43','Ok','switch_permission',33),('14','13','true','2022-01-09 15:01:39','test approve','switch_permission',34);
/*!40000 ALTER TABLE `approve_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_acara_damais`
--

DROP TABLE IF EXISTS `berita_acara_damais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_acara_damais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` timestamp NULL DEFAULT NULL,
  `bertempat_di` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_identitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_identitas_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kesepakatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendukung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengetahui` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_acara_damais`
--

LOCK TABLES `berita_acara_damais` WRITE;
/*!40000 ALTER TABLE `berita_acara_damais` DISABLE KEYS */;
/*!40000 ALTER TABLE `berita_acara_damais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_acara_kejadians`
--

DROP TABLE IF EXISTS `berita_acara_kejadians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_acara_kejadians` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bertempatdi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `action` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membuat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengetahui` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_acara_kejadians`
--

LOCK TABLES `berita_acara_kejadians` WRITE;
/*!40000 ALTER TABLE `berita_acara_kejadians` DISABLE KEYS */;
/*!40000 ALTER TABLE `berita_acara_kejadians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_acara_kerusakans`
--

DROP TABLE IF EXISTS `berita_acara_kerusakans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_acara_kerusakans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kronologi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindakan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kesimpulan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membuat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengetahui` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_acara_kerusakans`
--

LOCK TABLES `berita_acara_kerusakans` WRITE;
/*!40000 ALTER TABLE `berita_acara_kerusakans` DISABLE KEYS */;
/*!40000 ALTER TABLE `berita_acara_kerusakans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_acara_penemuan_barangs`
--

DROP TABLE IF EXISTS `berita_acara_penemuan_barangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_acara_penemuan_barangs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL,
  `berteimpat_di` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menemukan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengetahui` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_acara_penemuan_barangs`
--

LOCK TABLES `berita_acara_penemuan_barangs` WRITE;
/*!40000 ALTER TABLE `berita_acara_penemuan_barangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `berita_acara_penemuan_barangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_acara_penertiban_barangs`
--

DROP TABLE IF EXISTS `berita_acara_penertiban_barangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_acara_penertiban_barangs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_time` timestamp NULL DEFAULT NULL,
  `bertempat_di` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membuat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengetahui` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_acara_penertiban_barangs`
--

LOCK TABLES `berita_acara_penertiban_barangs` WRITE;
/*!40000 ALTER TABLE `berita_acara_penertiban_barangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `berita_acara_penertiban_barangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_serah_terima_inventarirs`
--

DROP TABLE IF EXISTS `berita_serah_terima_inventarirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_serah_terima_inventarirs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bertempatdi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menyerahkan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menerima` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengetahui` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_serah_terima_inventarirs`
--

LOCK TABLES `berita_serah_terima_inventarirs` WRITE;
/*!40000 ALTER TABLE `berita_serah_terima_inventarirs` DISABLE KEYS */;
/*!40000 ALTER TABLE `berita_serah_terima_inventarirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita_tanda_terima_barangs`
--

DROP TABLE IF EXISTS `berita_tanda_terima_barangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_tanda_terima_barangs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `diserahkan_kepada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deparment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diserahkan_di` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_tanda_terima_barangs`
--

LOCK TABLES `berita_tanda_terima_barangs` WRITE;
/*!40000 ALTER TABLE `berita_tanda_terima_barangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `berita_tanda_terima_barangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blast_message_role`
--

DROP TABLE IF EXISTS `blast_message_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blast_message_role` (
  `blast_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`blast_message_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blast_message_role`
--

LOCK TABLES `blast_message_role` WRITE;
/*!40000 ALTER TABLE `blast_message_role` DISABLE KEYS */;
INSERT INTO `blast_message_role` VALUES (1,1);
/*!40000 ALTER TABLE `blast_message_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blast_messages`
--

DROP TABLE IF EXISTS `blast_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blast_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blast_messages`
--

LOCK TABLES `blast_messages` WRITE;
/*!40000 ALTER TABLE `blast_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `blast_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE,
  KEY `categories_parent_id_foreign` (`parent_id`) USING BTREE,
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2021-06-30 20:28:56','2021-06-30 20:28:56'),(2,NULL,1,'Category 2','category-2','2021-06-30 20:28:56','2021-06-30 20:28:56');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_privates`
--

DROP TABLE IF EXISTS `chat_privates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_privates` (
  `id` varchar(255) NOT NULL,
  `id_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_privates`
--

LOCK TABLES `chat_privates` WRITE;
/*!40000 ALTER TABLE `chat_privates` DISABLE KEYS */;
INSERT INTO `chat_privates` VALUES ('80fec0fe-5d94-4967-a51e-09f31476f77f','9'),('80fec0fe-5d94-4967-a51e-09f31476f77f','10'),('e4e4bd16-b3e9-4110-89f8-a1b548ed54ce','2'),('e4e4bd16-b3e9-4110-89f8-a1b548ed54ce','5'),('659c9225-ecc5-4a3d-bd00-441f696d3bf6','51'),('659c9225-ecc5-4a3d-bd00-441f696d3bf6','2');
/*!40000 ALTER TABLE `chat_privates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cso_schedules`
--

DROP TABLE IF EXISTS `cso_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cso_schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tower_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` time DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `end` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=779 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cso_schedules`
--

LOCK TABLES `cso_schedules` WRITE;
/*!40000 ALTER TABLE `cso_schedules` DISABLE KEYS */;
INSERT INTO `cso_schedules` VALUES (337,4,51,'Briefing','06:00:00',NULL,NULL,NULL,NULL,1,'06:30:00'),(338,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','06:30:00',NULL,NULL,NULL,NULL,1,'07:00:00'),(339,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','07:00:00',NULL,NULL,NULL,NULL,1,'08:00:00'),(340,4,51,'Sweeping dan mopping loby ps 3 twr orchid + halaman loby twr orchid','08:30:00',NULL,NULL,NULL,NULL,1,'08:45:00'),(341,4,51,'Sweeping dan mopping offices cso dan sweeping area perkiran motor samping motor','08:45:00',NULL,NULL,NULL,NULL,1,'09:00:00'),(342,4,51,'Extra job : Cabut rumput','09:00:00',NULL,NULL,NULL,NULL,1,'10:00:00'),(343,4,51,'Mobile area halaman seputaran twr orchid','10:30:00',NULL,NULL,NULL,NULL,1,'11:00:00'),(344,4,51,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,1,'12:00:00'),(345,4,51,'Cek ulang all loby dan halaman','12:00:00',NULL,NULL,NULL,NULL,1,'12:30:00'),(346,4,51,'Extra job : dusting box APAR dan hydrant di koridor','12:30:00',NULL,NULL,NULL,NULL,1,'13:00:00'),(347,4,51,'Extra job : Toilet cleaning toilet umum pria wanita area timur','13:00:00',NULL,NULL,NULL,NULL,1,'13:30:00'),(348,4,51,'Sweeping parkiran motor dan perapihan ruang shaf lt dasar ps 1','13:30:00',NULL,NULL,NULL,NULL,1,'13:45:00'),(349,4,51,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,1,'14:00:00'),(350,4,49,'Briefing','06:00:00',NULL,NULL,NULL,NULL,1,'06:30:00'),(351,4,49,'Collecting sampah kor lt 18 - 15a','06:30:00',NULL,NULL,NULL,NULL,1,'07:00:00'),(352,4,49,'Collecting sampah kor lt 15 - 10','07:00:00',NULL,NULL,NULL,NULL,1,'07:30:00'),(353,4,49,'Collecting sampah kor lt 9 - 6','07:30:00',NULL,NULL,NULL,NULL,1,'08:00:00'),(354,4,49,'Collecting sampah kor lt 5 - 1','08:00:00',NULL,NULL,NULL,NULL,1,'08:30:00'),(355,4,49,'Sweeping dan perapihan area TPA','08:30:00',NULL,NULL,NULL,NULL,1,'09:00:00'),(356,4,49,'Sweeping dan mopping lantai koridor lt 18 - 17','09:00:00',NULL,NULL,NULL,NULL,1,'09:30:00'),(357,4,49,'Sweeping dan mopping lantai koridor lt 16 - 15a','09:30:00',NULL,NULL,NULL,NULL,1,'10:00:00'),(358,4,49,'Sweeping dan mopping lantai koridor lt 15 - 12','10:00:00',NULL,NULL,NULL,NULL,1,'10:30:00'),(359,4,49,'Sweeping dan mopping lantai koridor lt 11 - 10','10:30:00',NULL,NULL,NULL,NULL,1,'11:00:00'),(360,4,49,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,1,'12:00:00'),(361,4,49,'Extra job : dusting box APAR dan hydrant di koridor','12:00:00',NULL,NULL,NULL,NULL,1,'12:30:00'),(362,4,49,'Collecting sampah town house blok a dan C','12:30:00',NULL,NULL,NULL,NULL,1,'13:50:00'),(363,4,49,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,1,'14:00:00'),(364,4,48,'Briefing','06:00:00',NULL,NULL,NULL,NULL,1,'06:30:00'),(365,4,48,'Sweeping area halaman blok a dan g','06:30:00',NULL,NULL,NULL,NULL,1,'07:00:00'),(366,4,48,'Sweeping area halaman tower orchid','07:00:00',NULL,NULL,NULL,NULL,1,'07:30:00'),(367,4,48,'Sweeping area parkir motor','07:30:00',NULL,NULL,NULL,NULL,1,'08:00:00'),(368,4,48,'Sweeping dan mopping trap tangga TH blok a dan g','08:00:00',NULL,NULL,NULL,NULL,1,'09:30:00'),(369,4,48,'Extra job : dusting box APAR','09:30:00',NULL,NULL,NULL,NULL,1,'10:00:00'),(370,4,48,'Istirahat','10:00:00',NULL,NULL,NULL,NULL,1,'11:00:00'),(371,4,48,'Collecting sampah halaman blok a dan g','11:00:00',NULL,NULL,NULL,NULL,1,'12:30:00'),(372,4,48,'Pembuangan sampah ke tpa','12:30:00',NULL,NULL,NULL,NULL,1,'13:00:00'),(373,4,48,'Pengecekan ulang area TH blok a dan g','13:00:00',NULL,NULL,NULL,NULL,1,'13:45:00'),(374,4,48,'Pencucian peralatan kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,1,'14:00:00'),(375,4,51,'Briefing','13:00:00',NULL,NULL,NULL,NULL,1,'13:30:00'),(376,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','13:30:00',NULL,NULL,NULL,NULL,1,'14:00:00'),(377,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','14:00:00',NULL,NULL,NULL,NULL,1,'14:30:00'),(378,4,51,'Sweeping area halaman loby dan loby ps 3','14:30:00',NULL,NULL,NULL,NULL,1,'15:00:00'),(379,4,51,'Sweeping dan mopping offices cso dan sweeping area parkir motor samping offices cso','15:00:00',NULL,NULL,NULL,NULL,1,'15:30:00'),(380,4,51,'Extra job : Cabut rumput','15:30:00',NULL,NULL,NULL,NULL,1,'16:00:00'),(381,4,51,'Istirahat','16:00:00',NULL,NULL,NULL,NULL,1,'17:00:00'),(382,4,51,'Pengecekan ulang area loby twr ps 1, 2 dan dusting - dusting box apar dan box hydrant','17:00:00',NULL,NULL,NULL,NULL,1,'18:00:00'),(383,4,51,'Sweeping area halaman loby dan parkiran motor','18:00:00',NULL,NULL,NULL,NULL,1,'19:00:00'),(384,4,51,'Pengecekan handsoap loby ps 1, 2 dan pos depan','19:00:00',NULL,NULL,NULL,NULL,1,'19:30:00'),(385,4,51,'Membersihkan ruang shaf lt dasar ps 1','19:30:00',NULL,NULL,NULL,NULL,1,'20:00:00'),(386,4,51,'Pencucian alat kerja','20:00:00',NULL,NULL,NULL,NULL,1,'20:30:00'),(387,4,51,'Memastikan area bersih, perapihan alat kerja dan absen pulang','20:30:00',NULL,NULL,NULL,NULL,1,'21:00:00'),(388,4,47,'Briefing','13:00:00',NULL,NULL,NULL,NULL,1,'13:30:00'),(389,4,47,'Sweeping dan mopping lt 9 - 8','13:30:00',NULL,NULL,NULL,NULL,1,'14:00:00'),(390,4,47,'Sweeping dan mopping lt 7 - 6','14:00:00',NULL,NULL,NULL,NULL,1,'14:30:00'),(391,4,47,'Sweeping dan mopping lt 5 - 3','14:30:00',NULL,NULL,NULL,NULL,1,'15:00:00'),(392,4,47,'Sweeping dan mopping lt 2 - 1','15:00:00',NULL,NULL,NULL,NULL,1,'15:30:00'),(393,4,47,'Extra job : Dusting box apar dan hydrant','15:30:00',NULL,NULL,NULL,NULL,1,'16:00:00'),(394,4,47,'Sweeping dan membersihkan area lif ps 3','15:30:00',NULL,NULL,NULL,NULL,1,'16:00:00'),(395,4,47,'Collecting sampah lantai 18 - 15 a','16:00:00',NULL,NULL,NULL,NULL,1,'16:30:00'),(396,4,47,'Collecting sampah lantai 15 - 10','16:30:00',NULL,NULL,NULL,NULL,1,'17:00:00'),(397,4,47,'Istirahat','17:00:00',NULL,NULL,NULL,NULL,1,'18:00:00'),(398,4,47,'Collecting sampah lantai 9 - 6','18:00:00',NULL,NULL,NULL,NULL,1,'18:30:00'),(399,4,47,'Collecting sampah lantai 5 - 1','18:30:00',NULL,NULL,NULL,NULL,1,'19:00:00'),(400,4,47,'Collecting sampah town house a dan c','19:00:00',NULL,NULL,NULL,NULL,1,'19:45:00'),(401,4,47,'Collecting sampah kios twr orchid','19:45:00',NULL,NULL,NULL,NULL,1,'20:30:00'),(402,4,47,'Pembuangan sampah dan absensi pulang','20:30:00',NULL,NULL,NULL,NULL,1,'21:00:00'),(403,4,46,'Briefing','06:00:00',NULL,NULL,NULL,NULL,2,'06:30:00'),(404,4,46,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','06:30:00',NULL,NULL,NULL,NULL,2,'07:00:00'),(405,4,46,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','07:00:00',NULL,NULL,NULL,NULL,2,'08:00:00'),(406,4,46,'Sweeping dan mopping loby ps 3 twr orchid + halaman loby twr orchid','08:30:00',NULL,NULL,NULL,NULL,2,'08:45:00'),(407,4,46,'Sweeping dan mopping offices cso dan sweeping area perkiran motor samping motor','08:45:00',NULL,NULL,NULL,NULL,2,'09:00:00'),(408,4,46,'Extra job : ceiling cleaning','09:00:00',NULL,NULL,NULL,NULL,2,'10:00:00'),(409,4,46,'Mobile area halaman seputaran twr orchid','10:30:00',NULL,NULL,NULL,NULL,2,'11:00:00'),(410,4,46,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,2,'12:00:00'),(411,4,46,'Cek ulang all loby dan halaman','12:00:00',NULL,NULL,NULL,NULL,2,'12:30:00'),(412,4,46,'Extra job : ceiling cleaning','12:30:00',NULL,NULL,NULL,NULL,2,'13:00:00'),(413,4,46,'Extra job : Toilet cleaning toilet umum pria wanita area timur','13:00:00',NULL,NULL,NULL,NULL,2,'13:30:00'),(414,4,46,'Sweeping parkiran motor dan perapihan ruang shaf lt dasar ps 1','13:30:00',NULL,NULL,NULL,NULL,2,'13:45:00'),(415,4,46,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,2,'14:00:00'),(416,4,49,'Briefing','06:00:00',NULL,NULL,NULL,NULL,2,'06:30:00'),(417,4,49,'Collecting sampah kor lt 18 - 15a','06:30:00',NULL,NULL,NULL,NULL,2,'07:00:00'),(418,4,49,'Collecting sampah kor lt 15 - 13','07:00:00',NULL,NULL,NULL,NULL,2,'07:30:00'),(419,4,49,'Collecting sampah kor lt 9 - 5','07:30:00',NULL,NULL,NULL,NULL,2,'08:00:00'),(420,4,49,'Collecting sampah kor lt 3 - 1','08:00:00',NULL,NULL,NULL,NULL,2,'08:30:00'),(421,4,49,'Sweeping dan perapihan area TPA','08:30:00',NULL,NULL,NULL,NULL,2,'09:00:00'),(422,4,49,'Sweeping dan mopping lantai koridor lt 18 - 17','09:00:00',NULL,NULL,NULL,NULL,2,'09:30:00'),(423,4,49,'Sweeping dan mopping lantai koridor lt 16 - 15a','09:30:00',NULL,NULL,NULL,NULL,2,'10:00:00'),(424,4,49,'Sweeping dan mopping lantai koridor lt 15 - 12','10:00:00',NULL,NULL,NULL,NULL,2,'10:30:00'),(425,4,49,'Sweeping dan mopping lantai koridor lt 11 - 10','10:30:00',NULL,NULL,NULL,NULL,2,'11:00:00'),(426,4,49,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,2,'12:00:00'),(427,4,49,'Extra job : ceiling cleaning','12:00:00',NULL,NULL,NULL,NULL,2,'12:30:00'),(428,4,49,'Collecting sampah town house blok a a dan g','12:30:00',NULL,NULL,NULL,NULL,2,'13:30:00'),(429,4,49,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:30:00',NULL,NULL,NULL,NULL,2,'14:00:00'),(430,4,47,'Briefing','06:00:00',NULL,NULL,NULL,NULL,2,'06:30:00'),(431,4,47,'Sweeping area halaman blok a dan g','06:30:00',NULL,NULL,NULL,NULL,2,'07:00:00'),(432,4,47,'Sweeping area halaman tower orchid','07:00:00',NULL,NULL,NULL,NULL,2,'07:30:00'),(433,4,47,'Sweeping area parkir motor','07:30:00',NULL,NULL,NULL,NULL,2,'08:00:00'),(434,4,47,'Sweeping dan mopping trap tangga TH blok a dan g','08:00:00',NULL,NULL,NULL,NULL,2,'09:30:00'),(435,4,47,'Extra job : ceiling cleaning','09:30:00',NULL,NULL,NULL,NULL,2,'10:00:00'),(436,4,47,'Istirahat','10:00:00',NULL,NULL,NULL,NULL,2,'11:00:00'),(437,4,47,'Collecting sampah halaman blok a dan g','11:00:00',NULL,NULL,NULL,NULL,2,'12:30:00'),(438,4,47,'Pembuangan sampah ke tpa','12:30:00',NULL,NULL,NULL,NULL,2,'13:00:00'),(439,4,47,'Pengecekan ulang area TH blok a dan g','13:00:00',NULL,NULL,NULL,NULL,2,'13:45:00'),(440,4,47,'Pencucian peralatan kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,2,'14:00:00'),(441,4,50,'Briefing','13:00:00',NULL,NULL,NULL,NULL,2,'13:30:00'),(442,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','13:30:00',NULL,NULL,NULL,NULL,2,'14:00:00'),(443,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','14:00:00',NULL,NULL,NULL,NULL,2,'14:30:00'),(444,4,50,'Sweeping area halaman loby dan loby ps 3','14:30:00',NULL,NULL,NULL,NULL,2,'15:00:00'),(445,4,50,'Sweeping dan mopping offices cso dan sweeping area parkir motor samping offices cso','15:00:00',NULL,NULL,NULL,NULL,2,'15:30:00'),(446,4,50,'Extra job : ceiling cleaning','15:30:00',NULL,NULL,NULL,NULL,2,'16:00:00'),(447,4,50,'Istirahat','16:00:00',NULL,NULL,NULL,NULL,2,'17:00:00'),(448,4,50,'Pengecekan ulang area loby twr ps 1, 2 dan dusting - dusting box apar dan box hydrant','17:00:00',NULL,NULL,NULL,NULL,2,'18:00:00'),(449,4,50,'Sweeping area halaman loby dan parkiran motor','18:00:00',NULL,NULL,NULL,NULL,2,'19:00:00'),(450,4,50,'Pengecekan handsoap loby ps 1, 2 dan 3','19:00:00',NULL,NULL,NULL,NULL,2,'19:30:00'),(451,4,50,'Membersihkan ruang shaf lt dasar ps 1','19:30:00',NULL,NULL,NULL,NULL,2,'20:00:00'),(452,4,50,'Pencucian alat kerja','20:00:00',NULL,NULL,NULL,NULL,2,'20:30:00'),(453,4,50,'Memastikan area bersih, perapihan alat kerja dan absen pulang','20:30:00',NULL,NULL,NULL,NULL,2,'21:00:00'),(454,4,48,'Briefing','13:00:00',NULL,NULL,NULL,NULL,2,'13:30:00'),(455,4,48,'Sweeping dan mopping lt 9 - 8','13:30:00',NULL,NULL,NULL,NULL,2,'14:00:00'),(456,4,48,'Sweeping dan mopping lt 7 - 6','14:00:00',NULL,NULL,NULL,NULL,2,'14:30:00'),(457,4,48,'Sweeping dan mopping lt 5 - 3','14:30:00',NULL,NULL,NULL,NULL,2,'15:00:00'),(458,4,48,'Sweeping dan mopping lt 2 - 1','15:00:00',NULL,NULL,NULL,NULL,2,'15:30:00'),(459,4,48,'Extra job : ceiling cleaning','15:30:00',NULL,NULL,NULL,NULL,2,'16:00:00'),(460,4,48,'Sweeping dan membersihkan area lif ps 3','15:30:00',NULL,NULL,NULL,NULL,2,'16:00:00'),(461,4,48,'Collecting sampah lantai 18 - 15 a','16:00:00',NULL,NULL,NULL,NULL,2,'16:30:00'),(462,4,48,'Collecting sampah lantai 15 - 10','16:30:00',NULL,NULL,NULL,NULL,2,'17:00:00'),(463,4,48,'Istirahat','17:00:00',NULL,NULL,NULL,NULL,2,'18:00:00'),(464,4,48,'Collecting sampah lantai 9 - 6','18:00:00',NULL,NULL,NULL,NULL,2,'18:30:00'),(465,4,48,'Collecting sampah lantai 5 - 1','18:30:00',NULL,NULL,NULL,NULL,2,'19:00:00'),(466,4,48,'Collecting sampah town house a dan g','19:00:00',NULL,NULL,NULL,NULL,2,'19:45:00'),(467,4,48,'Collecting sampah kios twr orchid','19:45:00',NULL,NULL,NULL,NULL,2,'20:30:00'),(468,4,48,'Pembuangan sampah dan absensi pulang','20:30:00',NULL,NULL,NULL,NULL,2,'21:00:00'),(469,4,51,'Briefing','06:00:00',NULL,NULL,NULL,NULL,3,'06:30:00'),(470,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','06:30:00',NULL,NULL,NULL,NULL,3,'07:00:00'),(471,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','07:00:00',NULL,NULL,NULL,NULL,3,'08:00:00'),(472,4,51,'Sweeping dan mopping loby ps 3 twr orchid + halaman loby twr orchid','08:30:00',NULL,NULL,NULL,NULL,3,'08:45:00'),(473,4,51,'Sweeping dan mopping offices cso dan sweeping area perkiran motor samping motor','08:45:00',NULL,NULL,NULL,NULL,3,'09:00:00'),(474,4,51,'Extra job : Cabut rumput','09:00:00',NULL,NULL,NULL,NULL,3,'10:00:00'),(475,4,51,'Mobile area halaman seputaran twr orchid','10:30:00',NULL,NULL,NULL,NULL,3,'11:00:00'),(476,4,51,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,3,'12:00:00'),(477,4,51,'Cek ulang all loby dan halaman','12:00:00',NULL,NULL,NULL,NULL,3,'12:30:00'),(478,4,51,'Extra job : dusting box APAR dan hydrant di koridor','12:30:00',NULL,NULL,NULL,NULL,3,'13:00:00'),(479,4,51,'Extra job : Toilet cleaning toilet umum pria wanita area timur','13:00:00',NULL,NULL,NULL,NULL,3,'13:30:00'),(480,4,51,'Sweeping parkiran motor dan perapihan ruang shaf lt dasar ps 1','13:30:00',NULL,NULL,NULL,NULL,3,'13:45:00'),(481,4,51,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,3,'14:00:00'),(482,4,46,'Briefing','06:00:00',NULL,NULL,NULL,NULL,3,'06:30:00'),(483,4,46,'Collecting sampah kor lt 18 - 15a','06:30:00',NULL,NULL,NULL,NULL,3,'07:00:00'),(484,4,46,'Collecting sampah kor lt 15 - 13','07:00:00',NULL,NULL,NULL,NULL,3,'07:30:00'),(485,4,46,'Collecting sampah kor lt 9 - 5','07:30:00',NULL,NULL,NULL,NULL,3,'08:00:00'),(486,4,46,'Collecting sampah kor lt 3 - 1','08:00:00',NULL,NULL,NULL,NULL,3,'08:30:00'),(487,4,46,'Sweeping dan perapihan area TPA','08:30:00',NULL,NULL,NULL,NULL,3,'09:00:00'),(488,4,46,'Sweeping dan mopping lantai koridor lt 18 - 17','09:00:00',NULL,NULL,NULL,NULL,3,'09:30:00'),(489,4,46,'Sweeping dan mopping lantai koridor lt 16 - 15a','09:30:00',NULL,NULL,NULL,NULL,3,'10:00:00'),(490,4,46,'Sweeping dan mopping lantai koridor lt 15 - 12','10:00:00',NULL,NULL,NULL,NULL,3,'10:30:00'),(491,4,46,'Sweeping dan mopping lantai koridor lt 11 - 10','10:30:00',NULL,NULL,NULL,NULL,3,'11:00:00'),(492,4,46,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,3,'12:00:00'),(493,4,46,'Extra job : dusting box APAR dan hydrant di koridor','12:00:00',NULL,NULL,NULL,NULL,3,'12:30:00'),(494,4,46,'Collecting sampah town house blok a dan C','12:30:00',NULL,NULL,NULL,NULL,3,'13:50:00'),(495,4,46,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,3,'14:00:00'),(496,4,47,'Briefing','06:00:00',NULL,NULL,NULL,NULL,3,'06:30:00'),(497,4,47,'Sweeping area halaman blok a dan g','06:30:00',NULL,NULL,NULL,NULL,3,'07:00:00'),(498,4,47,'Sweeping area halaman tower orchid','07:00:00',NULL,NULL,NULL,NULL,3,'07:30:00'),(499,4,47,'Sweeping area parkir motor','07:30:00',NULL,NULL,NULL,NULL,3,'08:00:00'),(500,4,47,'Sweeping dan mopping trap tangga TH blok a dan g','08:00:00',NULL,NULL,NULL,NULL,3,'09:30:00'),(501,4,47,'Extra job : dusting box APAR','09:30:00',NULL,NULL,NULL,NULL,3,'10:00:00'),(502,4,47,'Istirahat','10:00:00',NULL,NULL,NULL,NULL,3,'11:00:00'),(503,4,47,'Collecting sampah halaman blok a dan g','11:00:00',NULL,NULL,NULL,NULL,3,'12:30:00'),(504,4,47,'Pembuangan sampah ke tpa','12:30:00',NULL,NULL,NULL,NULL,3,'13:00:00'),(505,4,47,'Pengecekan ulang area TH blok a dan g','13:00:00',NULL,NULL,NULL,NULL,3,'13:45:00'),(506,4,47,'Pencucian peralatan kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,3,'14:00:00'),(507,4,50,'Briefing','13:00:00',NULL,NULL,NULL,NULL,3,'13:30:00'),(508,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','13:30:00',NULL,NULL,NULL,NULL,3,'14:00:00'),(509,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','14:00:00',NULL,NULL,NULL,NULL,3,'14:30:00'),(510,4,50,'Sweeping area halaman loby dan loby ps 3','14:30:00',NULL,NULL,NULL,NULL,3,'15:00:00'),(511,4,50,'Sweeping dan mopping offices cso dan sweeping area parkir motor samping offices cso','15:00:00',NULL,NULL,NULL,NULL,3,'15:30:00'),(512,4,50,'Extra job : Cabut rumput','15:30:00',NULL,NULL,NULL,NULL,3,'16:00:00'),(513,4,50,'Istirahat','16:00:00',NULL,NULL,NULL,NULL,3,'17:00:00'),(514,4,50,'Pengecekan ulang area loby twr ps 1, 2 dan dusting - dusting box apar dan box hydrant','17:00:00',NULL,NULL,NULL,NULL,3,'18:00:00'),(515,4,50,'Sweeping area halaman loby dan parkiran motor','18:00:00',NULL,NULL,NULL,NULL,3,'19:00:00'),(516,4,50,'Pengecekan handsoap loby ps 1, 2 dan pos depan','19:00:00',NULL,NULL,NULL,NULL,3,'19:30:00'),(517,4,50,'Membersihkan ruang shaf lt dasar ps 1','19:30:00',NULL,NULL,NULL,NULL,3,'20:00:00'),(518,4,50,'Pencucian alat kerja','20:00:00',NULL,NULL,NULL,NULL,3,'20:30:00'),(519,4,50,'Memastikan area bersih, perapihan alat kerja dan absen pulang','20:30:00',NULL,NULL,NULL,NULL,3,'21:00:00'),(520,4,49,'Briefing','13:00:00',NULL,NULL,NULL,NULL,3,'13:30:00'),(521,4,49,'Sweeping dan mopping lt 9 - 8','13:30:00',NULL,NULL,NULL,NULL,3,'14:00:00'),(522,4,49,'Sweeping dan mopping lt 7 - 6','14:00:00',NULL,NULL,NULL,NULL,3,'14:30:00'),(523,4,49,'Sweeping dan mopping lt 5 - 3','14:30:00',NULL,NULL,NULL,NULL,3,'15:00:00'),(524,4,49,'Sweeping dan mopping lt 2 - 1','15:00:00',NULL,NULL,NULL,NULL,3,'15:30:00'),(525,4,49,'Extra job : Dusting box apar dan hydrant','15:30:00',NULL,NULL,NULL,NULL,3,'16:00:00'),(526,4,49,'Sweeping dan membersihkan area lif ps 3','15:30:00',NULL,NULL,NULL,NULL,3,'16:00:00'),(527,4,49,'Collecting sampah lantai 18 - 15 a','16:00:00',NULL,NULL,NULL,NULL,3,'16:30:00'),(528,4,49,'Collecting sampah lantai 15 - 10','16:30:00',NULL,NULL,NULL,NULL,3,'17:00:00'),(529,4,49,'Istirahat','17:00:00',NULL,NULL,NULL,NULL,3,'18:00:00'),(530,4,49,'Collecting sampah lantai 9 - 6','18:00:00',NULL,NULL,NULL,NULL,3,'18:30:00'),(531,4,49,'Collecting sampah lantai 5 - 1','18:30:00',NULL,NULL,NULL,NULL,3,'19:00:00'),(532,4,49,'Collecting sampah town house a dan c','19:00:00',NULL,NULL,NULL,NULL,3,'19:45:00'),(533,4,49,'Collecting sampah kios twr orchid','19:45:00',NULL,NULL,NULL,NULL,3,'20:30:00'),(534,4,49,'Pembuangan sampah dan absensi pulang','20:30:00',NULL,NULL,NULL,NULL,3,'21:00:00'),(535,4,50,'Briefing','06:00:00',NULL,NULL,NULL,NULL,4,'06:30:00'),(536,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','06:30:00',NULL,NULL,NULL,NULL,4,'07:00:00'),(537,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','07:00:00',NULL,NULL,NULL,NULL,4,'08:00:00'),(538,4,50,'Sweeping dan mopping loby ps 3 twr orchid + halaman loby twr orchid','08:30:00',NULL,NULL,NULL,NULL,4,'08:45:00'),(539,4,50,'Sweeping dan mopping offices cso dan sweeping area perkiran motor samping motor','08:45:00',NULL,NULL,NULL,NULL,4,'09:00:00'),(540,4,50,'Extra job : Pencucian standing astray dan dust bin toilet','09:00:00',NULL,NULL,NULL,NULL,4,'10:00:00'),(541,4,50,'Mobile area halaman seputaran twr orchid','10:30:00',NULL,NULL,NULL,NULL,4,'11:00:00'),(542,4,50,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,4,'12:00:00'),(543,4,50,'Cek ulang all loby dan halaman','12:00:00',NULL,NULL,NULL,NULL,4,'12:30:00'),(544,4,50,'Extra job : dusting box APAR dan hydrant di koridor','12:30:00',NULL,NULL,NULL,NULL,4,'13:00:00'),(545,4,50,'Extra job : Toilet cleaning toilet umum pria wanita area timur','13:00:00',NULL,NULL,NULL,NULL,4,'13:30:00'),(546,4,50,'Sweeping parkiran motor dan perapihan ruang shaf lt dasar ps 1','13:30:00',NULL,NULL,NULL,NULL,4,'13:45:00'),(547,4,50,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,4,'14:00:00'),(548,4,49,'Briefing','06:00:00',NULL,NULL,NULL,NULL,4,'06:30:00'),(549,4,49,'Collecting sampah kor lt 18 - 15a','06:30:00',NULL,NULL,NULL,NULL,4,'07:00:00'),(550,4,49,'Collecting sampah kor lt 15 - 13','07:00:00',NULL,NULL,NULL,NULL,4,'07:30:00'),(551,4,49,'Collecting sampah kor lt 9 - 5','07:30:00',NULL,NULL,NULL,NULL,4,'08:00:00'),(552,4,49,'Collecting sampah kor lt 3 - 1','08:00:00',NULL,NULL,NULL,NULL,4,'08:30:00'),(553,4,49,'Sweeping dan perapihan area TPA','08:30:00',NULL,NULL,NULL,NULL,4,'09:00:00'),(554,4,49,'Sweeping dan mopping lantai koridor lt 18 - 17','09:00:00',NULL,NULL,NULL,NULL,4,'09:30:00'),(555,4,49,'Sweeping dan mopping lantai koridor lt 16 - 15a','09:30:00',NULL,NULL,NULL,NULL,4,'10:00:00'),(556,4,49,'Sweeping dan mopping lantai koridor lt 15 - 12','10:00:00',NULL,NULL,NULL,NULL,4,'10:30:00'),(557,4,49,'Sweeping dan mopping lantai koridor lt 11 - 10','10:30:00',NULL,NULL,NULL,NULL,4,'11:00:00'),(558,4,49,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,4,'12:00:00'),(559,4,49,'Extra job : dusting list kaca koridor','12:00:00',NULL,NULL,NULL,NULL,4,'12:30:00'),(560,4,49,'Collecting sampah town house blok a dan g','12:30:00',NULL,NULL,NULL,NULL,4,'13:50:00'),(561,4,49,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,4,'14:00:00'),(562,4,46,'Briefing','06:00:00',NULL,NULL,NULL,NULL,4,'06:30:00'),(563,4,46,'Sweeping area halaman blok a dan g','06:30:00',NULL,NULL,NULL,NULL,4,'07:00:00'),(564,4,46,'Sweeping area halaman tower orchid','07:00:00',NULL,NULL,NULL,NULL,4,'07:30:00'),(565,4,46,'Sweeping area parkir motor','07:30:00',NULL,NULL,NULL,NULL,4,'08:00:00'),(566,4,46,'Sweeping dan mopping trap tangga TH blok a dan g','08:00:00',NULL,NULL,NULL,NULL,4,'09:30:00'),(567,4,46,'Extra job : dusting dust bin halaman blok a','09:30:00',NULL,NULL,NULL,NULL,4,'10:00:00'),(568,4,46,'Istirahat','10:00:00',NULL,NULL,NULL,NULL,4,'11:00:00'),(569,4,46,'Collecting sampah halaman blok a dan g','11:00:00',NULL,NULL,NULL,NULL,4,'12:30:00'),(570,4,46,'Pembuangan sampah ke tpa','12:30:00',NULL,NULL,NULL,NULL,4,'13:00:00'),(571,4,46,'Pengecekan ulang area TH blok a dan g','13:00:00',NULL,NULL,NULL,NULL,4,'13:45:00'),(572,4,46,'Pencucian peralatan kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,4,'14:00:00'),(573,4,46,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:30:00',NULL,NULL,NULL,NULL,4,'14:00:00'),(574,4,46,'Collecting sampah town house blok B dan C','12:30:00',NULL,NULL,NULL,NULL,4,'13:50:00'),(575,4,46,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,4,'14:00:00'),(576,4,47,'Briefing','13:00:00',NULL,NULL,NULL,NULL,4,'13:30:00'),(577,4,47,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','13:30:00',NULL,NULL,NULL,NULL,4,'14:00:00'),(578,4,47,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','14:00:00',NULL,NULL,NULL,NULL,4,'14:30:00'),(579,4,47,'Sweeping area halaman loby dan loby ps 3','14:30:00',NULL,NULL,NULL,NULL,4,'15:00:00'),(580,4,47,'Sweeping dan mopping offices cso dan sweeping area parkir motor samping offices cso','15:00:00',NULL,NULL,NULL,NULL,4,'15:30:00'),(581,4,47,'Extra job : Pencucian standing astray dan dust bin toilet','15:30:00',NULL,NULL,NULL,NULL,4,'16:00:00'),(582,4,47,'Istirahat','16:00:00',NULL,NULL,NULL,NULL,4,'17:00:00'),(583,4,47,'Pengecekan ulang area loby twr ps 1, 2 dan dusting - dusting box apar dan box hydrant','17:00:00',NULL,NULL,NULL,NULL,4,'18:00:00'),(584,4,47,'Sweeping area halaman loby dan parkiran motor','18:00:00',NULL,NULL,NULL,NULL,4,'19:00:00'),(585,4,47,'Pengecekan handsoap loby ps 1, 2 da 3','19:00:00',NULL,NULL,NULL,NULL,4,'19:30:00'),(586,4,47,'Membersihkan ruang shaf lt dasar ps 1','19:30:00',NULL,NULL,NULL,NULL,4,'20:00:00'),(587,4,47,'Pencucian alat kerja','20:00:00',NULL,NULL,NULL,NULL,4,'20:30:00'),(588,4,47,'Memastikan area bersih, perapihan alat kerja dan absen pulang','20:30:00',NULL,NULL,NULL,NULL,4,'21:00:00'),(589,4,48,'Briefing','13:00:00',NULL,NULL,NULL,NULL,4,'13:30:00'),(590,4,48,'Sweeping dan mopping lt 9 - 8','13:30:00',NULL,NULL,NULL,NULL,4,'14:00:00'),(591,4,48,'Sweeping dan mopping lt 7 - 6','14:00:00',NULL,NULL,NULL,NULL,4,'14:30:00'),(592,4,48,'Sweeping dan mopping lt 5 - 3','14:30:00',NULL,NULL,NULL,NULL,4,'15:00:00'),(593,4,48,'Sweeping dan mopping lt 2 - 1','15:00:00',NULL,NULL,NULL,NULL,4,'15:30:00'),(594,4,48,'Extra job : dusting list kaca koridor','15:30:00',NULL,NULL,NULL,NULL,4,'16:00:00'),(595,4,48,'Sweeping dan membersihkan area lif ps 3','15:30:00',NULL,NULL,NULL,NULL,4,'16:00:00'),(596,4,48,'Collecting sampah lantai 18 - 15 a','16:00:00',NULL,NULL,NULL,NULL,4,'16:30:00'),(597,4,48,'Collecting sampah lantai 15 - 10','16:30:00',NULL,NULL,NULL,NULL,4,'17:00:00'),(598,4,48,'Istirahat','17:00:00',NULL,NULL,NULL,NULL,4,'18:00:00'),(599,4,48,'Collecting sampah lantai 9 - 6','18:00:00',NULL,NULL,NULL,NULL,4,'18:30:00'),(600,4,48,'Collecting sampah lantai 5 - 1','18:30:00',NULL,NULL,NULL,NULL,4,'19:00:00'),(601,4,48,'Collecting sampah town house a dan c','19:00:00',NULL,NULL,NULL,NULL,4,'19:45:00'),(602,4,48,'Collecting sampah kios twr orchid','19:45:00',NULL,NULL,NULL,NULL,4,'20:30:00'),(603,4,48,'Pembuangan sampah dan absensi pulang','20:30:00',NULL,NULL,NULL,NULL,4,'21:00:00'),(604,4,50,'Briefing','06:00:00',NULL,NULL,NULL,NULL,5,'06:30:00'),(605,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','06:30:00',NULL,NULL,NULL,NULL,5,'07:00:00'),(606,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','07:00:00',NULL,NULL,NULL,NULL,5,'08:00:00'),(607,4,50,'Sweeping dan mopping loby ps 3 twr orchid + halaman loby twr orchid','08:30:00',NULL,NULL,NULL,NULL,5,'08:45:00'),(608,4,50,'Sweeping dan mopping offices cso dan sweeping area perkiran motor samping motor','08:45:00',NULL,NULL,NULL,NULL,5,'09:00:00'),(609,4,50,'Extra job : pencucian cabut rumput liar','09:00:00',NULL,NULL,NULL,NULL,5,'10:00:00'),(610,4,50,'Mobile area halaman seputaran twr orchid','10:30:00',NULL,NULL,NULL,NULL,5,'11:00:00'),(611,4,50,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,5,'12:00:00'),(612,4,50,'Cek ulang all loby dan halaman','12:00:00',NULL,NULL,NULL,NULL,5,'12:30:00'),(613,4,50,'Extra job : dusting box apar dan hydrant','12:30:00',NULL,NULL,NULL,NULL,5,'13:00:00'),(614,4,50,'Extra job : Toilet cleaning toilet umum pria wanita area timur','13:00:00',NULL,NULL,NULL,NULL,5,'13:30:00'),(615,4,50,'Sweeping parkiran motor dan perapihan ruang shaf lt dasar ps 1','13:30:00',NULL,NULL,NULL,NULL,5,'13:45:00'),(616,4,50,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,5,'14:00:00'),(617,4,49,'Briefing','06:00:00',NULL,NULL,NULL,NULL,5,'06:30:00'),(618,4,49,'Collecting sampah kor lt 18 - 15a','06:30:00',NULL,NULL,NULL,NULL,5,'07:00:00'),(619,4,49,'Collecting sampah kor lt 15 - 13','07:00:00',NULL,NULL,NULL,NULL,5,'07:30:00'),(620,4,49,'Collecting sampah kor lt 9 - 5','07:30:00',NULL,NULL,NULL,NULL,5,'08:00:00'),(621,4,49,'Collecting sampah kor lt 3 - 1','08:00:00',NULL,NULL,NULL,NULL,5,'08:30:00'),(622,4,49,'Sweeping dan perapihan area TPA','08:30:00',NULL,NULL,NULL,NULL,5,'09:00:00'),(623,4,49,'Sweeping dan mopping lantai koridor lt 18 - 17','09:00:00',NULL,NULL,NULL,NULL,5,'09:30:00'),(624,4,49,'Sweeping dan mopping lantai koridor lt 16 - 15a','09:30:00',NULL,NULL,NULL,NULL,5,'10:00:00'),(625,4,49,'Sweeping dan mopping lantai koridor lt 15 - 12','10:00:00',NULL,NULL,NULL,NULL,5,'10:30:00'),(626,4,49,'Sweeping dan mopping lantai koridor lt 11 - 10','10:30:00',NULL,NULL,NULL,NULL,5,'11:00:00'),(627,4,49,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,5,'12:00:00'),(628,4,49,'Extra job : dusting standing astray','12:00:00',NULL,NULL,NULL,NULL,5,'12:30:00'),(629,4,49,'Collecting sampah town house blok a dan g','12:30:00',NULL,NULL,NULL,NULL,5,'13:50:00'),(630,4,49,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,5,'14:00:00'),(631,4,48,'Briefing','06:00:00',NULL,NULL,NULL,NULL,5,'06:30:00'),(632,4,48,'Sweeping area halaman blok a dan g','06:30:00',NULL,NULL,NULL,NULL,5,'07:00:00'),(633,4,48,'Sweeping area halaman tower orchid','07:00:00',NULL,NULL,NULL,NULL,5,'07:30:00'),(634,4,48,'Sweeping area parkir motor','07:30:00',NULL,NULL,NULL,NULL,5,'08:00:00'),(635,4,48,'Sweeping dan mopping trap tangga TH blok a dan g','08:00:00',NULL,NULL,NULL,NULL,5,'09:30:00'),(636,4,48,'Extra job : dusting dust bin blok g','09:30:00',NULL,NULL,NULL,NULL,5,'10:00:00'),(637,4,48,'Istirahat','10:00:00',NULL,NULL,NULL,NULL,5,'11:00:00'),(638,4,48,'Collecting sampah halaman blok a dan g','11:00:00',NULL,NULL,NULL,NULL,5,'12:30:00'),(639,4,48,'Pembuangan sampah ke tpa','12:30:00',NULL,NULL,NULL,NULL,5,'13:00:00'),(640,4,48,'Pengecekan ulang area TH blok a dan g','13:00:00',NULL,NULL,NULL,NULL,5,'13:45:00'),(641,4,48,'Pencucian peralatan kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,5,'14:00:00'),(642,4,48,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:30:00',NULL,NULL,NULL,NULL,5,'14:00:00'),(643,4,48,'Collecting sampah town house blok B dan C','12:30:00',NULL,NULL,NULL,NULL,5,'13:50:00'),(644,4,48,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,5,'14:00:00'),(645,4,51,'Briefing','13:00:00',NULL,NULL,NULL,NULL,5,'13:30:00'),(646,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','13:30:00',NULL,NULL,NULL,NULL,5,'14:00:00'),(647,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','14:00:00',NULL,NULL,NULL,NULL,5,'14:30:00'),(648,4,51,'Sweeping area halaman loby dan loby ps 3','14:30:00',NULL,NULL,NULL,NULL,5,'15:00:00'),(649,4,51,'Sweeping dan mopping offices cso dan sweeping area parkir motor samping offices cso','15:00:00',NULL,NULL,NULL,NULL,5,'15:30:00'),(650,4,51,'Extra job : pencucian cabut rumput liar','15:30:00',NULL,NULL,NULL,NULL,5,'16:00:00'),(651,4,51,'Istirahat','16:00:00',NULL,NULL,NULL,NULL,5,'17:00:00'),(652,4,51,'Pengecekan ulang area loby twr ps 1, 2 dan dusting - dusting box apar dan box hydrant','17:00:00',NULL,NULL,NULL,NULL,5,'18:00:00'),(653,4,51,'Sweeping area halaman loby dan parkiran motor','18:00:00',NULL,NULL,NULL,NULL,5,'19:00:00'),(654,4,51,'Pengecekan handsoap loby ps 1, 2 dan 3','19:00:00',NULL,NULL,NULL,NULL,5,'19:30:00'),(655,4,51,'Membersihkan ruang shaf lt dasar ps 1','19:30:00',NULL,NULL,NULL,NULL,5,'20:00:00'),(656,4,51,'Pencucian alat kerja','20:00:00',NULL,NULL,NULL,NULL,5,'20:30:00'),(657,4,51,'Memastikan area bersih, perapihan alat kerja dan absen pulang','20:30:00',NULL,NULL,NULL,NULL,5,'21:00:00'),(658,4,46,'Briefing','13:00:00',NULL,NULL,NULL,NULL,5,'13:30:00'),(659,4,46,'Sweeping dan mopping lt 9 - 8','13:30:00',NULL,NULL,NULL,NULL,5,'14:00:00'),(660,4,46,'Sweeping dan mopping lt 7 - 6','14:00:00',NULL,NULL,NULL,NULL,5,'14:30:00'),(661,4,46,'Sweeping dan mopping lt 5 - 3','14:30:00',NULL,NULL,NULL,NULL,5,'15:00:00'),(662,4,46,'Sweeping dan mopping lt 2 - 1','15:00:00',NULL,NULL,NULL,NULL,5,'15:30:00'),(663,4,46,'Extra job : dusting standing astray','15:30:00',NULL,NULL,NULL,NULL,5,'16:00:00'),(664,4,46,'Sweeping dan membersihkan area lif ps 3','15:30:00',NULL,NULL,NULL,NULL,5,'16:00:00'),(665,4,46,'Collecting sampah lantai 18 - 15 a','16:00:00',NULL,NULL,NULL,NULL,5,'16:30:00'),(666,4,46,'Collecting sampah lantai 15 - 10','16:30:00',NULL,NULL,NULL,NULL,5,'17:00:00'),(667,4,46,'Istirahat','17:00:00',NULL,NULL,NULL,NULL,5,'18:00:00'),(668,4,46,'Collecting sampah lantai 9 - 6','18:00:00',NULL,NULL,NULL,NULL,5,'18:30:00'),(669,4,46,'Collecting sampah lantai 5 - 1','18:30:00',NULL,NULL,NULL,NULL,5,'19:00:00'),(670,4,46,'Collecting sampah town house a dan g','19:00:00',NULL,NULL,NULL,NULL,5,'19:45:00'),(671,4,46,'Collecting sampah kios twr orchid','19:45:00',NULL,NULL,NULL,NULL,5,'20:30:00'),(672,4,46,'Pembuangan sampah dan absensi pulang','20:30:00',NULL,NULL,NULL,NULL,5,'21:00:00'),(673,4,50,'Briefing','06:00:00',NULL,NULL,NULL,NULL,6,'06:30:00'),(674,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','06:30:00',NULL,NULL,NULL,NULL,6,'07:00:00'),(675,4,50,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','07:00:00',NULL,NULL,NULL,NULL,6,'08:00:00'),(676,4,50,'Sweeping dan mopping loby ps 3 twr orchid + halaman loby twr orchid','08:30:00',NULL,NULL,NULL,NULL,6,'08:45:00'),(677,4,50,'Sweeping dan mopping offices cso dan sweeping area perkiran motor samping motor','08:45:00',NULL,NULL,NULL,NULL,6,'09:00:00'),(678,4,50,'Extra job : spoting lantai dan sudut lantai toilet ps 1','09:00:00',NULL,NULL,NULL,NULL,6,'10:00:00'),(679,4,50,'Mobile area halaman seputaran twr orchid','10:30:00',NULL,NULL,NULL,NULL,6,'11:00:00'),(680,4,50,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,6,'12:00:00'),(681,4,50,'Cek ulang all loby dan halaman','12:00:00',NULL,NULL,NULL,NULL,6,'12:30:00'),(682,4,50,'Extra job : dusting box APAR dan hydrant di koridor','12:30:00',NULL,NULL,NULL,NULL,6,'13:00:00'),(683,4,50,'Extra job : Toilet cleaning toilet umum pria wanita area timur','13:00:00',NULL,NULL,NULL,NULL,6,'13:30:00'),(684,4,50,'Sweeping parkiran motor dan perapihan ruang shaf lt dasar ps 1','13:30:00',NULL,NULL,NULL,NULL,6,'13:45:00'),(685,4,50,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,6,'14:00:00'),(686,4,48,'Briefing','06:00:00',NULL,NULL,NULL,NULL,6,'06:30:00'),(687,4,48,'Collecting sampah kor lt 18 - 15a','06:30:00',NULL,NULL,NULL,NULL,6,'07:00:00'),(688,4,48,'Collecting sampah kor lt 15 - 13','07:00:00',NULL,NULL,NULL,NULL,6,'07:30:00'),(689,4,48,'Collecting sampah kor lt 9 - 5','07:30:00',NULL,NULL,NULL,NULL,6,'08:00:00'),(690,4,48,'Collecting sampah kor lt 3 - 1','08:00:00',NULL,NULL,NULL,NULL,6,'08:30:00'),(691,4,48,'Sweeping dan perapihan area TPA','08:30:00',NULL,NULL,NULL,NULL,6,'09:00:00'),(692,4,48,'Sweeping dan mopping lantai koridor lt 18 - 17','09:00:00',NULL,NULL,NULL,NULL,6,'09:30:00'),(693,4,48,'Sweeping dan mopping lantai koridor lt 16 - 15a','09:30:00',NULL,NULL,NULL,NULL,6,'10:00:00'),(694,4,48,'Sweeping dan mopping lantai koridor lt 15 - 12','10:00:00',NULL,NULL,NULL,NULL,6,'10:30:00'),(695,4,48,'Sweeping dan mopping lantai koridor lt 11 - 10','10:30:00',NULL,NULL,NULL,NULL,6,'11:00:00'),(696,4,48,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,6,'12:00:00'),(697,4,48,'Extra job : spoting lantai dan sudut lantai ruang shaf','12:00:00',NULL,NULL,NULL,NULL,6,'12:30:00'),(698,4,48,'Collecting sampah town house blok a dan g','12:30:00',NULL,NULL,NULL,NULL,6,'13:50:00'),(699,4,48,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,6,'14:00:00'),(700,4,47,'Briefing','06:00:00',NULL,NULL,NULL,NULL,6,'06:30:00'),(701,4,47,'Sweeping area halaman blok b dan c','06:30:00',NULL,NULL,NULL,NULL,6,'07:00:00'),(702,4,47,'Sweeping area halaman tower marigold','07:00:00',NULL,NULL,NULL,NULL,6,'07:30:00'),(703,4,47,'Sweeping halaman pos depan','07:30:00',NULL,NULL,NULL,NULL,6,'08:00:00'),(704,4,47,'Sweeping dan mopping trap tangga TH blok b dan c','08:00:00',NULL,NULL,NULL,NULL,6,'10:30:00'),(705,4,47,'Extra job : spoting flek/noda pada trap tangga blok a dan g','10:30:00',NULL,NULL,NULL,NULL,6,'11:00:00'),(706,4,47,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,6,'12:00:00'),(707,4,47,'Collecting sampah halaman blok B dan C','12:00:00',NULL,NULL,NULL,NULL,6,'13:00:00'),(708,4,47,'Pembuangan sampah ke tpa','13:00:00',NULL,NULL,NULL,NULL,6,'13:20:00'),(709,4,47,'Pengecekan ulang area TH blok B dan C','13:20:00',NULL,NULL,NULL,NULL,6,'13:45:00'),(710,4,47,'Pencucian peralatan kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,6,'14:00:00'),(711,4,51,'Briefing','13:00:00',NULL,NULL,NULL,NULL,6,'13:30:00'),(712,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','13:30:00',NULL,NULL,NULL,NULL,6,'14:00:00'),(713,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','14:00:00',NULL,NULL,NULL,NULL,6,'14:30:00'),(714,4,51,'Sweeping area halaman loby dan loby ps 3','14:30:00',NULL,NULL,NULL,NULL,6,'15:00:00'),(715,4,51,'Sweeping dan mopping offices cso dan sweeping area parkir motor samping offices cso','15:00:00',NULL,NULL,NULL,NULL,6,'15:30:00'),(716,4,51,'Extra job : spoting lantai dan sudut lantai toilet ps 2','15:30:00',NULL,NULL,NULL,NULL,6,'16:00:00'),(717,4,51,'Istirahat','16:00:00',NULL,NULL,NULL,NULL,6,'17:00:00'),(718,4,51,'Pengecekan ulang area loby twr ps 1, 2 dan dusting - dusting box apar dan box hydrant','17:00:00',NULL,NULL,NULL,NULL,6,'18:00:00'),(719,4,51,'Sweeping area halaman loby dan parkiran motor','18:00:00',NULL,NULL,NULL,NULL,6,'19:00:00'),(720,4,51,'Pengecekan handsoap loby ps 1, 2 dan 3','19:00:00',NULL,NULL,NULL,NULL,6,'19:30:00'),(721,4,51,'Membersihkan ruang shaf lt dasar ps 1','19:30:00',NULL,NULL,NULL,NULL,6,'20:00:00'),(722,4,51,'Pencucian alat kerja','20:00:00',NULL,NULL,NULL,NULL,6,'20:30:00'),(723,4,51,'Memastikan area bersih, perapihan alat kerja dan absen pulang','20:30:00',NULL,NULL,NULL,NULL,6,'21:00:00'),(724,4,46,'Briefing','13:00:00',NULL,NULL,NULL,NULL,6,'13:30:00'),(725,4,46,'Sweeping dan mopping lt 9 - 8','13:30:00',NULL,NULL,NULL,NULL,6,'14:00:00'),(726,4,46,'Sweeping dan mopping lt 7 - 6','14:00:00',NULL,NULL,NULL,NULL,6,'14:30:00'),(727,4,46,'Sweeping dan mopping lt 5 - 3','14:30:00',NULL,NULL,NULL,NULL,6,'15:00:00'),(728,4,46,'Sweeping dan mopping lt 2 - 1','15:00:00',NULL,NULL,NULL,NULL,6,'15:30:00'),(729,4,46,'Extra job : spoting lantai dan sudut lantai ruang shaf','15:30:00',NULL,NULL,NULL,NULL,6,'16:00:00'),(730,4,46,'Sweeping dan membersihkan area lif ps 3','15:30:00',NULL,NULL,NULL,NULL,6,'16:00:00'),(731,4,46,'Collecting sampah lantai 18 - 15 a','16:00:00',NULL,NULL,NULL,NULL,6,'16:30:00'),(732,4,46,'Collecting sampah lantai 15 - 10','16:30:00',NULL,NULL,NULL,NULL,6,'17:00:00'),(733,4,46,'Istirahat','17:00:00',NULL,NULL,NULL,NULL,6,'18:00:00'),(734,4,46,'Collecting sampah lantai 9 - 6','18:00:00',NULL,NULL,NULL,NULL,6,'18:30:00'),(735,4,46,'Collecting sampah lantai 5 - 1','18:30:00',NULL,NULL,NULL,NULL,6,'19:00:00'),(736,4,46,'Collecting sampah town house a dan g','19:00:00',NULL,NULL,NULL,NULL,6,'19:45:00'),(737,4,46,'Collecting sampah kios twr orchid','19:45:00',NULL,NULL,NULL,NULL,6,'20:30:00'),(738,4,46,'Pembuangan sampah dan absensi pulang','20:30:00',NULL,NULL,NULL,NULL,6,'21:00:00'),(739,4,51,'Briefing','06:00:00',NULL,NULL,NULL,NULL,7,'06:30:00'),(740,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 2 twr orchid','06:30:00',NULL,NULL,NULL,NULL,7,'07:00:00'),(741,4,51,'Sweeping, mopping, glass cleaning dan toilet cleaning loby ps 1 twr orchid','07:00:00',NULL,NULL,NULL,NULL,7,'08:00:00'),(742,4,51,'Sweeping dan mopping loby ps 3 twr orchid + halaman loby twr orchid','08:30:00',NULL,NULL,NULL,NULL,7,'08:45:00'),(743,4,51,'Sweeping dan mopping offices cso dan sweeping area perkiran motor samping motor','08:45:00',NULL,NULL,NULL,NULL,7,'09:00:00'),(744,4,51,'Extra job : dusting dust bin area kios','09:00:00',NULL,NULL,NULL,NULL,7,'10:00:00'),(745,4,51,'Istirahat','10:00:00',NULL,NULL,NULL,NULL,7,'11:00:00'),(746,4,51,'Cek ulang all loby dan halaman','11:00:00',NULL,NULL,NULL,NULL,7,'12:00:00'),(747,4,51,'Extra job : dusting box APAR dan hydrant di koridor','12:00:00',NULL,NULL,NULL,NULL,7,'12:30:00'),(748,4,51,'Extra job : Toilet cleaning toilet umum pria wanita area timur','12:30:00',NULL,NULL,NULL,NULL,7,'13:00:00'),(749,4,51,'Sweeping parkiran motor dan perapihan ruang shaf lt dasar ps 1','13:00:00',NULL,NULL,NULL,NULL,7,'13:30:00'),(750,4,51,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:30:00',NULL,NULL,NULL,NULL,7,'14:00:00'),(751,4,49,'Briefing','06:00:00',NULL,NULL,NULL,NULL,7,'06:30:00'),(752,4,49,'Collecting sampah kor lt 18 - 15a','06:30:00',NULL,NULL,NULL,NULL,7,'07:00:00'),(753,4,49,'Collecting sampah kor lt 15 - 13','07:00:00',NULL,NULL,NULL,NULL,7,'07:30:00'),(754,4,49,'Collecting sampah kor lt 9 - 5','07:30:00',NULL,NULL,NULL,NULL,7,'08:00:00'),(755,4,49,'Collecting sampah kor lt 3 - 1','08:00:00',NULL,NULL,NULL,NULL,7,'08:30:00'),(756,4,49,'Sweeping dan perapihan area TPA','08:30:00',NULL,NULL,NULL,NULL,7,'09:00:00'),(757,4,49,'Sweeping dan mopping lantai koridor lt 18 - 17','09:00:00',NULL,NULL,NULL,NULL,7,'09:30:00'),(758,4,49,'Sweeping dan mopping lantai koridor lt 16 - 15a','09:30:00',NULL,NULL,NULL,NULL,7,'10:00:00'),(759,4,49,'Sweeping dan mopping lantai koridor lt 15 - 12','10:00:00',NULL,NULL,NULL,NULL,7,'10:30:00'),(760,4,49,'Sweeping dan mopping lantai koridor lt 11 - 10','10:30:00',NULL,NULL,NULL,NULL,7,'11:00:00'),(761,4,49,'Istirahat','11:00:00',NULL,NULL,NULL,NULL,7,'12:00:00'),(762,4,49,'Extra job : cleaning exit','12:00:00',NULL,NULL,NULL,NULL,7,'12:30:00'),(763,4,49,'Collecting sampah town house blok a dan g','12:30:00',NULL,NULL,NULL,NULL,7,'13:50:00'),(764,4,49,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,7,'14:00:00'),(765,4,48,'Briefing','06:00:00',NULL,NULL,NULL,NULL,7,'06:30:00'),(766,4,48,'Sweeping area halaman blok a dan g','06:30:00',NULL,NULL,NULL,NULL,7,'07:00:00'),(767,4,48,'Sweeping area halaman tower orchid','07:00:00',NULL,NULL,NULL,NULL,7,'07:30:00'),(768,4,48,'Sweeping area parkir motor','07:30:00',NULL,NULL,NULL,NULL,7,'08:00:00'),(769,4,48,'Sweeping dan mopping trap tangga TH blok a dan g','08:00:00',NULL,NULL,NULL,NULL,7,'09:30:00'),(770,4,48,'Extra job : cleaning area exit','09:30:00',NULL,NULL,NULL,NULL,7,'10:00:00'),(771,4,48,'Istirahat','10:00:00',NULL,NULL,NULL,NULL,7,'11:00:00'),(772,4,48,'Collecting sampah halaman blok a dan g','11:00:00',NULL,NULL,NULL,NULL,7,'12:30:00'),(773,4,48,'Pembuangan sampah ke tpa','12:30:00',NULL,NULL,NULL,NULL,7,'13:00:00'),(774,4,48,'Pengecekan ulang area TH blok a dan g','13:00:00',NULL,NULL,NULL,NULL,7,'13:45:00'),(775,4,48,'Pencucian peralatan kerja dan absensi pulang','13:45:00',NULL,NULL,NULL,NULL,7,'14:00:00'),(776,4,48,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:30:00',NULL,NULL,NULL,NULL,7,'14:00:00'),(777,4,48,'Collecting sampah town house blok B dan C','12:30:00',NULL,NULL,NULL,NULL,7,'13:50:00'),(778,4,48,'Pencucian alat kerja, serah terima alat kerja dan absensi pulang','13:50:00',NULL,NULL,NULL,NULL,7,'14:00:00');
/*!40000 ALTER TABLE `cso_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `data_rows_data_type_id_foreign` (`data_type_id`) USING BTREE,
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),(2,1,'name','text','Name',1,1,1,1,1,1,'{}',2),(3,1,'email','text','Email',1,1,1,1,1,1,'{}',3),(4,1,'password','password','Password',1,0,0,1,1,0,'{}',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',9),(9,1,'user_belongsto_role_relationship','relationship','Departments',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(10,1,'user_belongstomany_role_relationship','relationship','Additional Dept',0,0,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"role_properties\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',12),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',14),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,'{}',1),(17,3,'name','text','Name',1,1,1,1,1,1,'{}',2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,'{}',5),(21,1,'role_id','text','Role',0,1,1,1,1,1,'{}',10),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(57,7,'full_name','text','Full Name',0,1,1,1,1,1,'{}',4),(58,7,'id_card','text','Id Card',0,1,1,1,1,1,'{}',5),(59,7,'kk_number','text','KK Number',0,1,1,1,1,1,'{}',6),(60,7,'default_address','text_area','Default Address',0,1,1,1,1,1,'{}',7),(61,7,'correspondence_address','text_area','Correspondence Address',0,1,1,1,1,1,'{}',8),(62,7,'email','text','Email',0,1,1,1,1,1,'{}',9),(63,7,'phone','text','Phone',0,1,1,1,1,1,'{}',10),(64,7,'expire_date','date','Expire Date',0,1,1,1,1,1,'{}',11),(65,7,'id_status','text','Id Status',0,0,0,0,0,0,'{}',12),(66,7,'isinactive','checkbox','Inactive',0,1,1,1,1,1,'{\"on\":\"Active\",\"off\":\"In-Active\"}',13),(67,7,'last_login','date','Last Login',0,1,0,0,0,0,'{}',14),(68,7,'created_at','timestamp','Registered At',0,1,1,1,0,1,'{}',15),(69,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',16),(70,7,'verified','date','Verified',0,0,0,0,0,0,'{}',17),(71,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(72,8,'large_m2','number','Large M2',0,0,1,1,1,1,'{}',5),(73,8,'daya_va','number','Daya Va',0,0,1,1,1,1,'{}',7),(74,8,'water_main_cost','number','Water Main Cost',0,0,1,1,1,1,'{}',6),(75,8,'bast','text','Bast',0,0,1,1,1,1,'{}',8),(76,8,'va_bca','text','Va Bca',0,0,1,1,1,1,'{}',9),(77,8,'va_mandiri','text','Va Mandiri',0,0,1,1,1,1,'{}',10),(78,8,'electric_number','text','Electric Number',0,0,1,1,1,1,'{}',11),(79,8,'water_number','text','Water Number',0,0,1,1,1,1,'{}',12),(80,8,'unit_type','text','Unit Type',0,0,1,1,1,1,'{}',13),(81,8,'unit_status','select_multiple','Unit Status',0,0,1,1,0,0,'{\"default\":\"1\",\"options\":{\"1\":\"Owner\"}}',15),(82,8,'owner','text','Name',0,1,1,1,1,1,'{}',3),(83,8,'number_of_bedroom','text','Number Of Bedroom',0,0,0,0,0,0,'{}',16),(84,8,'number_of_bathroom','text','Number Of Bathroom',0,0,0,0,0,0,'{}',17),(85,8,'balcony','text','Balcony',0,0,0,0,0,0,'{}',18),(86,8,'description','rich_text_box','Description',0,0,1,1,1,1,'{}',4),(87,8,'unit_number','text','Unit Number',0,1,1,1,1,1,'{}',2),(88,8,'isinactive','text','Isinactive',0,0,0,0,0,0,'{}',19),(89,8,'max_key_access','text','Max Key Access',0,0,0,0,0,0,'{}',20),(90,8,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',21),(91,8,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',22),(92,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(93,9,'name','text','Name',0,1,1,1,1,1,'{}',2),(94,9,'description','text','Description',0,1,1,1,1,1,'{}',3),(95,9,'address','text','Address',0,1,1,1,1,1,'{}',4),(96,9,'destination','text','Destination',0,1,1,1,1,1,'{}',5),(97,9,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),(98,9,'updated_at','timestamp','Updated At',0,0,1,0,0,0,'{}',7),(99,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(100,10,'title','text','Title',0,1,1,1,1,1,'{}',2),(101,10,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',3),(102,10,'to','multiple_checkbox','Test',0,0,0,0,0,0,'{}',4),(103,10,'image','file','Attachment',0,1,1,1,1,1,'{}',5),(104,10,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),(105,10,'updated_at','timestamp','Updated At',0,0,1,0,0,0,'{}',7),(106,10,'blast_message_belongstomany_role_relationship','relationship','To',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"1\",\"taggable\":\"0\"}',8),(107,1,'user_hasone_user_relationship','relationship','Supervisor',0,0,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"supervisor\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',15),(108,1,'email_verified_at','timestamp','Email Verified At',0,1,1,1,1,1,'{}',7),(109,1,'supervisor','text','Supervisor',0,0,0,0,0,0,'{}',13),(110,11,'id','text','Id',1,0,0,0,0,0,'{}',1),(111,11,'title','text','Title',0,1,1,1,1,1,'{}',2),(112,11,'description','text_area','Remarks',0,1,1,1,1,1,'{}',8),(113,11,'location','text','Location',0,1,1,1,1,1,'{}',7),(115,11,'department','select_dropdown','Department',0,1,1,1,1,1,'{\"options\":{\"1\":\"Customer Service\",\"2\":\"Mechanical and Enginering\",\"3\":\"Security\",\"4\":\"Cleaning Service Officer\"}}',3),(116,11,'attachment','multiple_images','Attachment',0,1,1,1,1,1,'{}',10),(117,11,'status','text','Status',0,0,0,0,0,0,'{\"options\":{\"1\":\"Pending\",\"2\":\"Progress\",\"3\":\"Done\",\"4\":\"Reject\"}}',17),(118,11,'created_by','text','Created By',0,0,0,0,0,0,'{}',18),(120,11,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',19),(121,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',20),(132,11,'tenant','text','Tenant',0,0,0,0,0,0,'{}',6),(133,11,'realization','rich_text_box','Realization',0,1,1,0,0,0,'{}',13),(134,11,'result','rich_text_box','Result',0,1,1,0,0,0,'{}',15),(135,11,'ticket_belongsto_user_relationship','relationship','PIC',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_pic\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"tickket_pics\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(138,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(139,13,'tenant','text','Tenant',0,1,1,1,1,1,'{}',4),(140,13,'phone','text','Phone',0,0,0,0,0,0,'{}',7),(141,13,'tower','text','Tower',0,0,0,0,0,0,'{}',5),(142,13,'blok','text','Blok',0,0,0,0,0,0,'{}',8),(143,13,'description','text_area','Description',0,1,1,1,1,1,'{}',9),(144,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',14),(145,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',15),(146,13,'expired_at','timestamp','Expired At',0,1,1,1,1,1,'{}',13),(147,13,'status','select_dropdown','Status',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Pending\",\"2\":\"Progress\",\"3\":\"Done\",\"4\":\"Rejected\"}}',12),(148,13,'attachment','multiple_images','Attachment',0,1,1,1,1,1,'{}',11),(149,13,'type_request','select_dropdown','Request Type',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Barang Masuk\",\"2\":\"Barang Keluar\"}}',2),(152,7,'tenant_belongsto_unit_relationship','relationship','Units',0,1,1,1,1,1,'{\"model\":\"App\\\\Unit\",\"table\":\"units\",\"type\":\"belongsTo\",\"column\":\"id_unit\",\"key\":\"id\",\"label\":\"unit_number\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(153,7,'id_unit','text','Id Unit',0,1,1,1,1,1,'{}',18),(154,13,'good_application_belongsto_tower_relationship','relationship','Tower',0,0,0,0,0,0,'{\"model\":\"App\\\\Tower\",\"table\":\"blast_message_role\",\"type\":\"belongsTo\",\"column\":\"tower\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(156,15,'id','text','Id',1,0,0,0,0,0,'{}',1),(157,15,'employee','select_dropdown','Employee',0,1,1,1,1,1,'{}',4),(158,15,'department','select_dropdown','Department',0,1,1,1,1,1,'{}',5),(159,15,'role','select_dropdown','Role',0,1,1,1,1,1,'{\"options\":{\"1\":\"Supervisor\",\"2\":\"Staff\"}}',6),(160,15,'address','rich_text_box','Address',0,1,1,1,1,1,'{}',7),(161,15,'telp','text','Telp',0,1,1,1,1,1,'{}',8),(162,15,'leave_type','select_dropdown','Leave Type',0,1,1,1,1,1,'{\"options\":{\"1\":\"Cuti tahunan\",\"2\":\"Cuti Menikah\",\"3\":\"Cuti Melahirkan\",\"4\":\"Other\"}}',9),(163,15,'description','text','Description',0,1,1,1,1,1,'{}',10),(164,15,'from','date','From',0,1,1,1,1,1,'{}',11),(165,15,'to','date','To',0,1,1,1,1,1,'{}',12),(166,15,'status','select_dropdown','Status',0,1,1,1,1,1,'{\"options\":{\"1\":\"draft\",\"2\":\"Approve\",\"3\":\"Rejected\",\"4\":\"Pending\"}}',13),(167,15,'remarks','rich_text_box','Remarks',0,1,1,1,1,1,'{}',14),(168,15,'approved_by','text','Approved By',0,1,1,1,1,1,'{}',15),(169,15,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',16),(170,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',17),(172,15,'leave_form_belongsto_user_relationship','relationship','Employee',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"employee\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(173,15,'leave_form_belongsto_role_relationship','relationship','Departments',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"department\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(174,16,'id','text','Id',1,0,0,0,0,0,'{}',1),(175,16,'employee','text','Employee',0,1,1,1,1,1,'{}',2),(176,16,'date','date','Date',0,1,1,1,1,1,'{}',5),(177,16,'department','text','Department',0,1,1,1,1,1,'{}',6),(178,16,'from','time','From',0,1,1,1,1,1,'{}',7),(179,16,'to','time','To',0,1,1,1,1,1,'{}',8),(180,16,'deviation_type','multiple_checkbox','Deviation Type',0,1,1,1,1,1,'{\"options\":{\"1\":\"Tugas Luar\",\"2\":\"Datang Terlambat\",\"3\":\"Pulang Cepat\",\"4\":\"Izin\",\"5\":\"Others\"}}',9),(181,16,'description','text','Description',0,1,1,1,1,1,'{}',10),(182,16,'action','multiple_checkbox','Action',0,1,1,1,1,1,'{\"options\":{\"1\":\"Pemotongan Cuti Tahunan\",\"2\":\"Pemotongan Gaji\",\"3\":\"Others\"}}',11),(183,16,'approved_by','text','Approved By',0,1,1,1,1,1,'{}',12),(184,16,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',13),(185,16,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(186,16,'time_deviation_belongsto_user_relationship','relationship','Employee',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"employee\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(187,16,'time_deviation_belongsto_role_relationship','relationship','Department',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"department\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(188,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(189,17,'pemohon','text','Pemohon',0,1,1,0,0,0,'{}',3),(190,17,'date','date','Date',0,1,1,0,0,0,'{}',2),(191,17,'from','time','From',0,0,1,0,0,0,'{}',6),(192,17,'to','time','To',0,0,0,0,0,0,'{}',7),(193,17,'delegate','text','Delegate',0,1,1,0,0,0,'{}',8),(194,17,'action','text','Action',0,0,0,0,0,0,'{\"options\":{\"1\":\"Pemotongan Cuti Tahunan\",\"2\":\"Pemotongan Gaji\",\"3\":\"Others\"}}',9),(195,17,'approved_by','text','Approved By',0,0,0,0,0,0,'{}',10),(196,17,'permissions_type','text','Permissions Type',0,0,0,0,0,0,'{\"optios\":{\"1\":\"Tukar Off Tanggal\",\"2\":\"Tukar Off Dengan\"}}',11),(197,17,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',14),(198,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',15),(199,17,'switch_permission_belongsto_user_relationship','relationship','Created by',0,1,1,0,0,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"pemohon\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(200,17,'switch_permission_belongsto_user_relationship_1','relationship','Delegate To',0,1,1,0,0,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"delegate\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(201,18,'id','text','Id',1,0,0,0,0,0,'{}',1),(202,18,'name','text','Name',0,1,1,1,1,1,'{}',4),(203,18,'departmnet','text','Departmnet',0,1,1,1,1,1,'{}',5),(204,18,'descripton','text','Descripton',0,1,1,1,1,1,'{}',6),(205,18,'date','date','Date',0,1,1,1,1,1,'{}',7),(206,18,'from','time','From',0,1,1,1,1,1,'{}',8),(207,18,'to','time','To',0,1,1,1,1,1,'{}',9),(208,18,'approved_by','text','Approved By',0,1,1,1,1,1,'{}',10),(209,18,'status','text','Status',0,1,1,1,1,1,'{\"options\":{\"1\":\"Draft\",\"2\":\"Approved\",\"3\":\"Pending\",\"4\":\"Rejected\"}}',11),(210,18,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',12),(211,18,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(212,18,'lembur_form_belongsto_user_relationship','relationship','Request by',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"name\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(213,18,'lembur_form_belongsto_role_relationship','relationship','Department',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"departmnet\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(214,8,'unit_belongsto_tower_relationship','relationship','Unit Type',0,0,1,1,1,1,'{\"model\":\"App\\\\Tower\",\"table\":\"towers\",\"type\":\"belongsTo\",\"column\":\"unit_type\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"blast_message_role\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),(215,8,'update_by','text','Update By',0,1,1,1,1,1,'{}',23),(216,7,'status','select_multiple','Status',0,1,1,1,1,1,'{\"options\":{\"1\":\"Own\",\"2\":\"Rent\"}}',3),(217,19,'id','text','Id',1,0,0,0,0,0,'{}',1),(218,19,'id_unit','select_dropdown','Id Unit',0,1,1,1,1,1,'{}',3),(219,19,'access_1','select_dropdown','Access 1',0,1,1,1,1,1,'{}',5),(220,19,'access_2','select_dropdown','Access 2',0,1,1,1,1,1,'{}',7),(221,19,'access_3','text','Access 3',0,1,1,1,1,1,'{}',10),(222,19,'access_4','text','Access 4',0,1,1,1,1,1,'{}',12),(223,20,'id','text','Id',1,0,0,0,0,0,'{}',1),(224,20,'id_unit','select_dropdown','Unit Number',0,0,0,0,0,0,'{}',4),(225,20,'id_tenant','select_dropdown','Id Tenant',0,1,1,1,1,1,'{}',5),(226,20,'name','text','Name',0,1,1,1,1,1,'{}',6),(227,20,'email','text','Email',0,1,1,1,1,1,'{}',7),(228,20,'phone','text','Phone',0,1,1,1,1,1,'{}',8),(229,20,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(230,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(231,20,'user_access_belongsto_unit_relationship','relationship','Unit Number',0,1,1,1,1,1,'{\"model\":\"App\\\\Unit\",\"table\":\"units\",\"type\":\"belongsTo\",\"column\":\"name\",\"key\":\"id\",\"label\":\"unit_number\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(232,20,'user_access_belongsto_tenant_relationship','relationship','tenants',0,1,1,1,1,1,'{\"model\":\"App\\\\Tenant\",\"table\":\"tenants\",\"type\":\"belongsTo\",\"column\":\"id_tenant\",\"key\":\"id\",\"label\":\"full_name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(233,20,'status','select_dropdown','Status',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Active\",\"2\":\"In-Active\"}}',9),(234,19,'access_belongsto_unit_relationship','relationship','units',0,1,1,1,1,1,'{\"model\":\"App\\\\Unit\",\"table\":\"units\",\"type\":\"belongsTo\",\"column\":\"id_unit\",\"key\":\"id\",\"label\":\"unit_number\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(235,19,'access_belongsto_user_access_relationship','relationship','User Access 1',0,1,1,1,1,1,'{\"model\":\"App\\\\UserAccess\",\"table\":\"user_accesses\",\"type\":\"belongsTo\",\"column\":\"access_1\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(236,19,'access_belongsto_user_access_relationship_1','relationship','User Access 2',0,1,1,1,1,1,'{\"model\":\"App\\\\UserAccess\",\"table\":\"user_accesses\",\"type\":\"belongsTo\",\"column\":\"access_2\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(237,19,'access_belongsto_user_access_relationship_2','relationship','User Access 3',0,1,1,1,1,1,'{\"model\":\"App\\\\UserAccess\",\"table\":\"user_accesses\",\"type\":\"belongsTo\",\"column\":\"access_3\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',8),(238,19,'access_belongsto_user_access_relationship_3','relationship','User Access 4',0,1,1,1,1,1,'{\"model\":\"App\\\\UserAccess\",\"table\":\"user_accesses\",\"type\":\"belongsTo\",\"column\":\"access_4\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(239,19,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',13),(240,19,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',14),(241,19,'status','text','Status',0,0,0,0,0,0,'{\"options\":{\"1\":\"Active\",\"2\":\"In-Active\"}}',9),(242,19,'updated_by','text','Updated By',0,1,1,1,1,1,'{}',15),(243,11,'id_unit','text','Id Unit',0,1,1,1,1,1,'{}',5),(244,11,'ticket_belongsto_unit_relationship','relationship','units',0,1,1,1,1,1,'{\"model\":\"App\\\\Unit\",\"table\":\"units\",\"type\":\"belongsTo\",\"column\":\"id_unit\",\"key\":\"id\",\"label\":\"unit_number\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(245,13,'good_application_hasone_unit_relationship','relationship','Units',0,1,1,1,1,1,'{\"model\":\"App\\\\Unit\",\"table\":\"units\",\"type\":\"belongsTo\",\"column\":\"tenant\",\"key\":\"id\",\"label\":\"unit_number\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(246,13,'remarks','text_area','Remarks',0,1,1,1,1,1,'{}',10),(247,22,'id','text','Id',1,0,0,0,0,0,'{}',1),(248,22,'bertempatdi','text','Bertempatdi',0,1,1,1,1,1,'{}',8),(249,22,'description','rich_text_box','Description',0,0,1,1,1,1,'{}',9),(250,22,'date','timestamp','Date',0,1,1,1,1,1,'{}',2),(251,22,'action','rich_text_box','Action',0,0,1,1,1,1,'{}',10),(252,22,'membuat','text','Membuat',0,1,1,1,1,1,'{}',4),(253,22,'mengetahui','select_dropdown','Mengetahui',0,1,1,1,1,1,'{}',6),(254,22,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',11),(255,22,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(256,22,'type','select_dropdown','Type',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Terjadi\",\"2\":\"ditemukan\",\"3\":\"dilakukan\",\"4\":\"lain-nya\"}}',7),(257,22,'category','select_dropdown','Category',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Employee\",\"2\":\"Tenant\",\"3\":\"Tamu\",\"4\":\"lain-nya\"}}',3),(258,22,'berita_acara_kejadian_belongsto_user_relationship','relationship','Mengetahui',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"mengetahui\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(259,24,'id','text','Id',1,0,0,0,0,0,'{}',1),(260,24,'date','timestamp','Date',0,1,1,1,1,1,'{}',4),(261,24,'name','text','Name',0,1,1,1,1,1,'{}',5),(262,24,'jenis_kelamin','select_dropdown','Jenis Kelamin',0,1,1,1,1,1,'{\"options\":{\"1\":\"Laki-laki\",\"2\":\"Perempuan\"}}',6),(263,24,'umur','number','Umur',0,1,1,1,1,1,'{}',7),(264,24,'pekerjaan','text','Pekerjaan',0,1,1,1,1,1,'{}',8),(265,24,'alamat','text_area','Alamat',0,1,1,1,1,1,'{}',9),(266,24,'kronologi','rich_text_box','Kronologi',0,1,1,1,1,1,'{}',10),(267,24,'tindakan','rich_text_box','Tindakan',0,1,1,1,1,1,'{}',11),(268,24,'kesimpulan','rich_text_box','Kesimpulan',0,1,1,1,1,1,'{}',12),(269,24,'membuat','text','Membuat',0,1,1,1,1,1,'{}',2),(270,24,'mengetahui','text','Mengetahui',0,1,1,1,1,1,'{}',3),(271,24,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',13),(272,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(273,25,'id','text','Id',1,0,0,0,0,0,'{}',1),(274,25,'nama','text','Nama',0,1,1,1,1,1,'{}',2),(275,25,'agama','select_dropdown','Agama',0,1,1,1,1,1,'{\"options\":{\"1\":\"Islam\",\"2\":\"Kristen\",\"3\":\"Budha\"}}',3),(276,25,'pekerjaan','text','Pekerjaan',0,1,1,1,1,1,'{}',4),(277,25,'alamat','text','Alamat',0,1,1,1,1,1,'{}',5),(278,25,'nama_2','text','Nama 2',0,1,1,1,1,1,'{}',6),(279,25,'agama_2','select_dropdown','Agama 2',0,1,1,1,1,1,'{\"options\":{\"1\":\"Islam\",\"2\":\"Kristen\",\"3\":\"Budha\"}}',7),(280,25,'pekerjaan_2','text','Pekerjaan 2',0,1,1,1,1,1,'{}',8),(281,25,'alamat_2','text','Alamat 2',0,1,1,1,1,1,'{}',9),(282,25,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',10),(283,25,'date','timestamp','Date',0,1,1,1,1,1,'{}',11),(284,25,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',12),(285,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(286,26,'id','text','Id',1,0,0,0,0,0,'{}',1),(287,26,'nama','text','Nama',0,1,1,1,1,1,'{}',2),(288,26,'jenis_kelamin','select_dropdown','Jenis Kelamin',0,1,1,1,1,1,'{\"options\":{\"1\":\"Laki-laki\",\"2\":\"Perempuan\"}}',4),(289,26,'umur','text','Umur',0,1,1,1,1,1,'{}',5),(290,26,'no_identitas','text','No Identitas',0,1,1,1,1,1,'{}',3),(291,26,'alamat','text','Alamat',0,1,1,1,1,1,'{}',7),(292,26,'no_telp','text','No Telp',0,1,1,1,1,1,'{}',8),(293,26,'date','timestamp','Date',0,1,1,1,1,1,'{}',6),(294,26,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',9),(295,26,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(296,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(297,27,'id','text','Id',1,0,0,0,0,0,'{}',1),(298,27,'date','timestamp','Date',0,1,1,1,1,1,'{}',2),(299,27,'nama','text','Nama',0,1,1,1,1,1,'{}',3),(300,27,'jenis_kelamin','text','Jenis Kelamin',0,1,1,1,1,1,'{}',4),(301,27,'umur','text','Umur',0,1,1,1,1,1,'{}',5),(302,27,'no_identitas','text','No Identitas',0,1,1,1,1,1,'{}',6),(303,27,'alamat','text_area','Alamat',0,1,1,1,1,1,'{}',7),(304,27,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',8),(305,27,'kronologi','rich_text_box','Kronologi',0,1,1,1,1,1,'{}',9),(306,27,'security','text','Security',0,1,1,1,1,1,'{}',10),(307,27,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',11),(308,27,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(309,28,'id','text','Id',1,0,0,0,0,0,'{}',1),(312,28,'perihal','text','Perihal',0,1,1,1,1,1,'{}',4),(313,28,'nama','text','Nama',0,1,1,1,1,1,'{}',5),(314,28,'alamat','text_area','Alamat',0,1,1,1,1,1,'{}',6),(315,28,'no_identitas','text','No Identitas',0,1,1,1,1,1,'{}',7),(316,28,'no_telp','text','No Telp',0,1,1,1,1,1,'{}',8),(317,28,'nama_2','text','Nama 2',0,1,1,1,1,1,'{}',9),(318,28,'alamat_2','text_area','Alamat 2',0,1,1,1,1,1,'{}',10),(319,28,'no_identitas_2','text','No Identitas 2',0,1,1,1,1,1,'{}',11),(321,28,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',13),(322,28,'kesepakatan','rich_text_box','Kesepakatan',0,1,1,1,1,1,'{}',14),(323,28,'pendukung','rich_text_box','Pendukung',0,1,1,1,1,1,'{}',15),(324,28,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',16),(325,28,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',17),(326,29,'id','text','Id',1,0,0,0,0,0,'{}',1),(327,29,'bertempatdi','text','Bertempatdi',0,1,1,1,1,1,'{}',2),(328,29,'date','timestamp','Date',0,1,1,1,1,1,'{}',3),(329,29,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',4),(330,29,'menyerahkan','text','Menyerahkan',0,1,1,1,1,1,'{}',5),(331,29,'menerima','text','Menerima',0,1,1,1,1,1,'{}',6),(332,29,'mengetahui','text','Mengetahui',0,1,1,1,1,1,'{}',7),(333,29,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(334,29,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(344,33,'id','text','Id',1,0,0,0,0,0,'{}',1),(345,33,'date','timestamp','Date',0,1,1,1,1,1,'{}',2),(346,33,'berteimpat_di','text','Berteimpat Di',0,1,1,1,1,1,'{}',3),(347,33,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',4),(348,33,'menemukan','text','Menemukan',0,1,1,1,1,1,'{}',5),(349,33,'saksi','text','Saksi',0,1,1,1,1,1,'{}',6),(350,33,'mengetahui','text','Mengetahui',0,1,1,1,1,1,'{}',7),(351,33,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(352,33,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(353,34,'id','text','Id',1,0,0,0,0,0,'{}',1),(354,34,'date_time','timestamp','Date Time',0,1,1,1,1,1,'{}',2),(355,34,'bertempat_di','text','Bertempat Di',0,1,1,1,1,1,'{}',3),(356,34,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',4),(357,34,'action','rich_text_box','Action',0,1,1,1,1,1,'{}',5),(358,34,'membuat','text','Membuat',0,1,1,1,1,1,'{}',6),(359,34,'mengetahui','text','Mengetahui',0,1,1,1,1,1,'{}',7),(360,34,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(361,34,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(362,35,'id','text','Id',1,0,0,0,0,0,'{}',1),(363,35,'date','timestamp','Date',0,1,1,1,1,1,'{}',2),(364,35,'perihal','text','Perihal',0,1,1,1,1,1,'{}',3),(365,35,'kepada','text','Kepada',0,1,1,1,1,1,'{}',4),(366,35,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',5),(367,35,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(368,35,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(369,36,'id','text','Id',1,0,0,0,0,0,'{}',1),(370,36,'diserahkan_kepada','text','Diserahkan Kepada',0,1,1,1,1,1,'{}',2),(371,36,'jabatan','text','Jabatan',0,1,1,1,1,1,'{}',3),(372,36,'deparment','text','Deparment',0,1,1,1,1,1,'{}',4),(373,36,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',5),(374,36,'diserahkan_di','text','Diserahkan Di',0,1,1,1,1,1,'{}',6),(375,36,'datetime','timestamp','Datetime',0,1,1,1,1,1,'{}',7),(376,36,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(377,36,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(378,28,'datetime','timestamp','Datetime',0,1,1,1,1,1,'{}',2),(379,28,'bertempat_di','text','Bertempat Di',0,1,1,1,1,1,'{}',3),(380,28,'no_telp_2','text','No Telp 2',0,1,1,1,1,1,'{}',12),(381,28,'mengetahui','text','Mengetahui',0,1,1,1,1,1,'{}',16),(382,17,'date_to','text','Date To',0,0,1,0,0,0,'{}',17),(383,17,'description','text_area','Description',0,1,1,0,0,0,'{}',13),(384,17,'shift_sched','select_dropdown','Shift Sched',0,1,1,0,0,0,'{\"options\":{\"1\":\"Pagi\",\"2\":\"Siang\",\"3\":\"Malam\"}}',16),(385,17,'next_approver','text','Next Approver',0,1,1,0,0,0,'{}',18),(386,17,'status','select_dropdown','Status',0,1,1,0,0,0,'{\"options\":{\"1\":\"Draft\",\"2\":\"Waiting for Approval\",\"3\":\"Approve\",\"4\":\"Reject\"}}',19),(387,17,'approval_flow','text','Approval Flow',0,0,0,0,0,0,'{}',20),(388,17,'switch_permission_belongsto_user_relationship_2','relationship','Next Approver',0,1,1,0,0,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"next_approver\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',12),(389,11,'realization_image','image','Realization Image',0,1,1,0,0,0,'{}',14),(390,11,'result_image','image','Result Image',0,1,1,0,0,0,'{}',16),(391,11,'ticket_belongsto_user_relationship_1','relationship','Additional PIC',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"tickket_pics\",\"pivot\":\"1\",\"taggable\":\"0\"}',12),(392,11,'id_pic','text','Id Pic',0,1,1,1,1,1,'{}',9),(393,1,'api_token','text','Api Token',0,0,1,1,1,1,'{}',17),(394,1,'phone_number','text','Phone Number',0,1,1,1,1,1,'{}',16),(395,1,'mobile_token','text','Mobile Token',0,0,1,1,1,1,'{}',18),(396,37,'id','text','Id',1,0,0,0,0,0,'{}',1),(397,37,'id_role','text','Id Role',0,1,1,1,1,1,'{}',3),(398,37,'name','text','Name',0,1,1,1,1,1,'{}',4),(399,37,'description','text','Description',0,1,1,1,1,1,'{}',5),(400,37,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(401,37,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(402,37,'role_property_hasone_role_relationship','relationship','Department',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"id_role\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(403,38,'id','text','Id',1,0,0,0,0,0,'{}',1),(404,38,'name','text','Name',0,1,1,1,1,1,'{}',2),(405,38,'description','text','Description',0,1,1,1,1,1,'{}',3),(406,38,'id_role','text','Id Role',0,1,1,1,1,1,'{}',4),(407,38,'id_role_properties','select_multiple','Id Role Properties',0,0,0,0,0,0,'{}',6),(408,38,'uid_firebase','text','Uid Firebase',0,0,0,0,0,0,'{}',8),(409,38,'photo','image','Photo',0,1,1,1,1,1,'{}',9),(410,38,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(411,38,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(412,38,'group_chat_belongsto_role_relationship','relationship','Department',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"id_role\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(413,38,'group_chat_belongsto_role_property_relationship','relationship','Role',0,1,1,1,1,1,'{\"model\":\"App\\\\RoleProperty\",\"table\":\"role_properties\",\"type\":\"belongsToMany\",\"column\":\"id_role_properties\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"group_chat_pivots\",\"pivot\":\"1\",\"taggable\":\"0\"}',7),(414,39,'id','text','Id',1,0,0,0,0,0,'{}',1),(415,39,'id_form','select_multiple','Id Form',0,1,1,1,1,1,'{\"default\":\"\",\"options\":{\"1\":\"Keluar Masuk Barang\",\"2\":\"Cuti\",\"3\":\"Time Deviations\",\"4\":\"Tukar Shift\",\"5\":\"Perintah Lembur\"}}',2),(416,39,'description','text','Description',0,1,1,1,1,1,'{}',3),(417,39,'id_role','text','Id Role',0,1,1,1,1,1,'{}',5),(418,39,'id_role_property','text','Id Role Property',0,1,1,1,1,1,'{}',7),(419,39,'approval_1','text','Approval 1',0,1,1,1,1,1,'{}',8),(420,39,'approval_2','text','Approval 2',0,1,1,1,1,1,'{}',10),(421,39,'approval_3','text','Approval 3',0,1,1,1,1,1,'{}',12),(422,39,'approval_4','text','Approval 4',0,1,1,1,1,1,'{}',14),(423,39,'approval_5','text','Approval 5',0,1,1,1,1,1,'{}',16),(424,39,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',18),(425,39,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',19),(426,39,'approval_flow_belongsto_role_relationship','relationship','Departments',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"id_role\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(427,39,'approval_flow_belongsto_role_property_relationship','relationship','Role',0,1,1,1,1,1,'{\"model\":\"App\\\\RoleProperty\",\"table\":\"role_properties\",\"type\":\"belongsTo\",\"column\":\"id_role_property\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(428,39,'approval_flow_belongsto_user_relationship','relationship','Approver 1',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"approval_1\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),(429,39,'approval_flow_belongsto_user_relationship_1','relationship','Approver 2',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"approval_2\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(430,39,'approval_flow_belongsto_user_relationship_2','relationship','Approver 3',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"approval_3\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(431,39,'approval_flow_belongsto_user_relationship_3','relationship','Apprrover 4',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"approval_4\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',15),(432,39,'approval_flow_belongsto_user_relationship_4','relationship','Approver 5',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"approval_5\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',17),(433,1,'user_belongsto_role_property_relationship','relationship','Role',0,1,1,1,1,1,'{\"model\":\"App\\\\RoleProperty\",\"table\":\"role_properties\",\"type\":\"belongsTo\",\"column\":\"role_property_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',19),(434,1,'role_property_id','text','Role Property Id',0,1,1,1,1,1,'{}',16),(435,39,'approval_flow_belongsto_user_relationship_5','relationship','Email',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"email\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',20),(436,39,'email','text','Email',0,1,1,1,1,1,'{}',13),(437,40,'id','text','Id',1,0,0,0,0,0,'{}',1),(438,40,'description','text_area','Description',0,1,1,1,1,1,'{}',2),(439,40,'date_sent','timestamp','Date Sent',0,1,1,1,1,1,'{}',3),(440,40,'unit','text','Unit',0,0,0,0,0,0,'{}',5),(441,40,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(442,40,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(443,40,'send_invoice_hasmany_unit_relationship','relationship','units',0,1,1,1,1,1,'{\"model\":\"App\\\\Unit\",\"table\":\"units\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"unit_number\",\"pivot_table\":\"pivot_send_invoices\",\"pivot\":\"1\",\"taggable\":\"0\"}',4),(444,40,'month','select_dropdown','Month',0,1,1,1,1,1,'{\"options\":{\"10\":\"Oktober\",\"11\":\"November\",\"12\":\"Desember\",\"01\":\"Januari\",\"02\":\"Februari\",\"03\":\"Maret\",\"04\":\"April\",\"05\":\"Mei\",\"06\":\"Juni\",\"07\":\"Juli\",\"08\":\"Agustus\",\"09\":\"September\"}}',6),(445,40,'year','select_dropdown','Year',0,1,1,1,1,1,'{\"options\":{\"2020\":\"2020\",\"2021\":\"2021\",\"2022\":\"2022\"}}',7),(446,41,'id','text','Id',1,0,0,0,0,0,'{}',1),(447,41,'tower_id','text','Tower Id',0,1,1,1,1,1,'{}',3),(448,41,'employee_id','text','Employee Id',0,1,1,1,1,1,'{}',5),(449,41,'description','text','Description',0,1,1,1,1,1,'{}',6),(450,41,'time','time','Start',0,1,1,1,1,1,'{}',9),(451,41,'shift','select_dropdown','Shift',0,1,1,1,1,1,'{\"default\":null,\"options\":{\"1\":\"Shift I\",\"2\":\"Shift II\"}}',7),(452,41,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',11),(453,41,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(454,41,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',13),(455,41,'cso_schedule_belongsto_tower_relationship','relationship','Tower',0,1,1,1,1,1,'{\"model\":\"App\\\\Tower\",\"table\":\"towers\",\"type\":\"belongsTo\",\"column\":\"tower_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(456,41,'cso_schedule_belongsto_user_relationship','relationship','Employee',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"employee_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(457,42,'id','text','Id',1,0,0,0,0,0,'{}',1),(458,42,'current_meter','text','Current Meter',0,1,1,1,1,1,'{}',3),(459,42,'month','select_dropdown','Month',0,1,1,1,1,1,'{\"default\":\"\",\"options\":{\"1\":\"Januari\",\"2\":\"Februari\",\"3\":\"Maret\",\"4\":\"April\",\"5\":\"Mei\",\"6\":\"Juni\",\"7\":\"Juli\",\"8\":\"Agustus\",\"9\":\"September\",\"10\":\"Oktober\",\"11\":\"November\",\"12\":\"Desember\"}}',2),(460,42,'before_meter','text','Before Meter',0,1,1,1,1,1,'{}',4),(461,42,'unit_id','text','Unit Id',0,1,1,1,1,1,'{}',5),(462,42,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(463,42,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(464,42,'user_id','text','User Id',0,0,0,0,0,0,'{}',9),(465,42,'water_meter_belongsto_unit_relationship','relationship','units',0,1,1,1,1,1,'{\"model\":\"App\\\\Unit\",\"table\":\"units\",\"type\":\"belongsTo\",\"column\":\"unit_id\",\"key\":\"id\",\"label\":\"unit_number\",\"pivot_table\":\"accesses\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(466,41,'day','select_dropdown','Day',0,1,1,1,1,1,'{\"default\":null,\"options\":{\"1\":\"Senin\",\"2\":\"Selasa\",\"3\":\"Rabu\",\"4\":\"Kamis\",\"5\":\"Jumat\",\"6\":\"Sabtu\",\"7\":\"Minggu\"}}',8),(467,41,'end','time','End',0,1,1,1,1,1,'{}',10);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `data_types_name_unique` (`name`) USING BTREE,
  UNIQUE KEY `data_types_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-06-30 20:28:47','2022-02-09 06:38:05'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-06-30 20:28:47','2021-06-30 20:28:47'),(3,'roles','roles','Department','Departments','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-06-30 20:28:47','2021-07-02 22:11:28'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2021-06-30 20:28:55','2021-06-30 20:28:55'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2021-06-30 20:28:57','2021-06-30 20:28:57'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2021-06-30 20:28:59','2021-06-30 20:28:59'),(7,'tenants','tenants','Tenant','Tenants','voyager-people','App\\Tenant',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-02 22:54:03','2022-02-17 09:41:32'),(8,'units','units','Unit','Units','voyager-company','App\\Unit',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-02 23:19:57','2021-07-15 04:54:27'),(9,'vendors','vendors','Vendor','Vendors','voyager-person','App\\Vendor',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-07-03 02:29:03','2021-07-03 02:29:03'),(10,'blast_messages','blast-messages','Blast Message','Blast Messages','voyager-mail','App\\BlastMessage',NULL,'\\App\\Http\\Controllers\\Voyager\\BlastMessageController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-03 02:33:06','2021-07-14 21:24:31'),(11,'tickets','tickets','Ticket','Tickets','voyager-list','App\\Ticket',NULL,'\\App\\Http\\Controllers\\Voyager\\TicketController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-11 04:34:39','2021-12-18 22:53:52'),(13,'good_applications','good-applications','Form Keluar Masuk Barang','Keluar Masuk Barang','voyager-window-list','App\\GoodApplication',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-11 07:10:56','2021-07-15 08:01:51'),(15,'leave_forms','leave-forms','Leave Form','Leave Forms','voyager-paper-plane','App\\LeaveForm',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-14 20:34:47','2021-07-14 20:47:39'),(16,'time_deviations','time-deviations','Time Deviation','Time Deviations','voyager-calendar','App\\TimeDeviation',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-14 20:55:29','2021-07-14 21:01:39'),(17,'switch_permissions','switch-permissions','Switch Permission','Switch Permissions','voyager-archive','App\\SwitchPermission',NULL,'\\App\\Http\\Controllers\\Voyager\\SwitchPermissionController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-14 21:11:52','2021-12-15 16:22:28'),(18,'lembur_forms','lembur-forms','Over Times','Over Time Form','voyager-hotdog','App\\LemburForm',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-14 21:17:56','2021-07-14 21:42:31'),(19,'accesses','accesses','Access','Accesses','voyager-key','App\\Access',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-15 06:26:26','2021-07-15 06:54:15'),(20,'user_accesses','user-accesses','User','Users','voyager-people','App\\UserAccess',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-07-15 06:32:35','2021-07-15 06:50:27'),(22,'berita_acara_kejadians','berita-acara-kejadian','Berita Acara Kejadian','Berita Acara Kejadian','voyager-file-text','App\\BeritaAcaraKejadian',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-18 22:17:16','2021-09-24 10:39:26'),(24,'berita_acara_kerusakans','berita-acara-kerusakans','Berita Acara Kerusakan','Berita Acara Kerusakans',NULL,'App\\BeritaAcaraKerusakan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-18 23:01:11','2021-09-18 23:01:11'),(25,'surat_pernyataan_keduas','surat-pernyataan-keduas','Surat Pernyataan Kedua','Surat Pernyataan Keduas',NULL,'App\\SuratPernyataanKedua',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-19 07:45:17','2021-09-19 07:45:17'),(26,'surat_pernyataans','surat-pernyataans','Surat Pernyataan','Surat Pernyataans',NULL,'App\\SuratPernyataan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-19 08:12:49','2021-09-19 08:12:49'),(27,'surat_keterangan_pengaduans','surat-keterangan-pengaduans','Surat Keterangan Pengaduan','Surat Keterangan Pengaduans',NULL,'App\\SuratKeteranganPengaduan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-19 11:10:07','2021-09-19 11:10:07'),(28,'berita_acara_damais','berita-acara-damais','Berita Acara Damai','Berita Acara Damais','voyager-file-text','App\\BeritaAcaraDamai',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-09-19 11:47:24','2021-09-24 09:26:14'),(29,'berita_serah_terima_inventarirs','berita-serah-terima-inventarirs','Berita Serah Terima Inventarir','Berita Serah Terima Inventarirs',NULL,'App\\BeritaSerahTerimaInventarir',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-22 21:43:09','2021-09-22 21:43:09'),(33,'berita_acara_penemuan_barangs','berita-acara-penemuan-barangs','Berita Acara Penemuan Barang','Berita Acara Penemuan Barangs',NULL,'App\\BeritaAcaraPenemuanBarang',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-22 21:46:22','2021-09-22 21:46:22'),(34,'berita_acara_penertiban_barangs','berita-acara-penertiban-barangs','Berita Acara Penertiban Barang','Berita Acara Penertiban Barangs',NULL,'App\\BeritaAcaraPenertibanBarang',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-22 21:49:29','2021-09-22 21:49:29'),(35,'surat_pemberitahuans','surat-pemberitahuans','Surat Pemberitahuan','Surat Pemberitahuans',NULL,'App\\SuratPemberitahuan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-22 21:59:58','2021-09-22 21:59:58'),(36,'berita_tanda_terima_barangs','berita-tanda-terima-barangs','Berita Tanda Terima Barang','Berita Tanda Terima Barangs',NULL,'App\\BeritaTandaTerimaBarang',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-09-22 22:04:02','2021-09-22 22:04:02'),(37,'role_properties','role-properties','Role Property','Role Properties','voyager-tv','App\\RoleProperty',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-02-06 00:48:23','2022-02-06 00:50:25'),(38,'group_chats','group-chats','Group Chat','Group Chats','voyager-categories','App\\GroupChat',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-02-06 00:54:00','2022-02-06 01:41:20'),(39,'approval_flows','approval-flows','Approval Flow','Approval Flows','voyager-cup','App\\ApprovalFlow',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-02-06 04:49:09','2022-02-13 03:30:51'),(40,'send_invoices','send-invoices','Send Invoice','Send Invoices','voyager-receipt','App\\SendInvoice',NULL,'\\App\\Http\\Controllers\\Voyager\\SendInvoiceController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-02-17 07:35:28','2022-02-17 23:54:39'),(41,'cso_schedules','cso-schedules','Cso Schedule','Cso Schedules',NULL,'App\\CsoSchedule',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-15 23:54:50','2022-04-16 04:07:08'),(42,'water_meters','water-meters','Water Meter','Water Meters','voyager-dashboard','App\\WaterMeter',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-04-16 00:12:03','2022-04-16 00:14:05');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_applications`
--

DROP TABLE IF EXISTS `good_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `good_applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tenant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tower` int(11) DEFAULT NULL,
  `blok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_request` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_applications`
--

LOCK TABLES `good_applications` WRITE;
/*!40000 ALTER TABLE `good_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `good_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_chat_pivots`
--

DROP TABLE IF EXISTS `group_chat_pivots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_chat_pivots` (
  `group_chat_id` int(10) unsigned NOT NULL,
  `role_property_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_chat_pivots`
--

LOCK TABLES `group_chat_pivots` WRITE;
/*!40000 ALTER TABLE `group_chat_pivots` DISABLE KEYS */;
INSERT INTO `group_chat_pivots` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(3,1),(3,2),(3,3),(3,4);
/*!40000 ALTER TABLE `group_chat_pivots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_chats`
--

DROP TABLE IF EXISTS `group_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_chats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_role_properties` int(11) DEFAULT NULL,
  `uid_firebase` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_chats`
--

LOCK TABLES `group_chats` WRITE;
/*!40000 ALTER TABLE `group_chats` DISABLE KEYS */;
INSERT INTO `group_chats` VALUES (3,'Security',NULL,NULL,NULL,NULL,'group-chats/April2022/cxpVQl0HUZoefKrM4LeQ.png','2022-04-16 23:13:00','2022-04-16 23:25:01');
/*!40000 ALTER TABLE `group_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_forms`
--

DROP TABLE IF EXISTS `leave_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_forms`
--

LOCK TABLES `leave_forms` WRITE;
/*!40000 ALTER TABLE `leave_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lembur_forms`
--

DROP TABLE IF EXISTS `lembur_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lembur_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departmnet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripton` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lembur_forms`
--

LOCK TABLES `lembur_forms` WRITE;
/*!40000 ALTER TABLE `lembur_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `lembur_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `menu_items_menu_id_foreign` (`menu_id`) USING BTREE,
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-06-30 20:28:49','2021-06-30 20:28:49','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,20,1,'2021-06-30 20:28:49','2021-07-07 06:56:52','voyager.media.index',NULL),(3,1,'Employees','','_self','voyager-person','#000000',16,1,'2021-06-30 20:28:49','2021-07-07 06:56:42','voyager.users.index','null'),(4,1,'Departments','','_self','voyager-lock','#000000',5,1,'2021-06-30 20:28:49','2021-07-14 21:24:53','voyager.roles.index','null'),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,6,'2021-06-30 20:28:49','2021-07-15 06:27:13',NULL,NULL),(10,1,'Settings','','_self','voyager-settings',NULL,5,2,'2021-06-30 20:28:50','2021-07-14 21:24:53','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,20,4,'2021-06-30 20:28:56','2021-07-15 06:45:55','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,20,2,'2021-06-30 20:28:58','2021-07-07 06:56:52','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,20,3,'2021-06-30 20:29:00','2021-07-15 06:45:55','voyager.pages.index',NULL),(15,1,'Tenants','','_self','voyager-people',NULL,19,2,'2021-07-02 22:54:05','2021-07-15 06:45:57','voyager.tenants.index',NULL),(16,1,'Entity Management','#','_self','voyager-smile','#000000',NULL,2,'2021-07-02 22:55:13','2021-07-07 06:56:47',NULL,''),(18,1,'Units','','_self','voyager-company',NULL,19,1,'2021-07-02 23:19:59','2021-07-15 04:45:17','voyager.units.index',NULL),(19,1,'Units Management','#','_self','voyager-categories','#000000',NULL,3,'2021-07-02 23:22:05','2021-07-07 06:56:47',NULL,''),(20,1,'Content Management','#','_self','voyager-lightbulb','#000000',NULL,4,'2021-07-02 23:46:44','2021-07-15 06:27:13',NULL,''),(21,1,'Vendors','','_self','voyager-person',NULL,16,2,'2021-07-03 02:29:05','2021-07-15 04:44:53','voyager.vendors.index',NULL),(22,1,'Blast Messages','','_self','voyager-mail',NULL,20,5,'2021-07-03 02:33:07','2021-07-15 06:45:55','voyager.blast-messages.index',NULL),(23,1,'Complaint Tickets','','_self','voyager-list','#000000',26,2,'2021-07-11 04:34:42','2021-07-15 07:11:56','voyager.tickets.index','null'),(25,1,'Form Keluar/Masuk Barang','','_self','voyager-window-list','#000000',26,1,'2021-07-11 07:10:58','2021-07-15 07:11:00','voyager.good-applications.index','null'),(26,1,'Request Management','#','_self','voyager-treasure-open','#000000',NULL,5,'2021-07-11 07:35:10','2021-07-15 06:27:13',NULL,''),(27,1,'Leave Forms','','_self','voyager-paper-plane',NULL,26,3,'2021-07-14 20:34:49','2021-07-15 06:45:53','voyager.leave-forms.index',NULL),(28,1,'Time Deviations','','_self','voyager-calendar',NULL,26,4,'2021-07-14 20:55:31','2021-07-15 06:45:53','voyager.time-deviations.index',NULL),(29,1,'Switch Permissions','','_self','voyager-archive',NULL,26,5,'2021-07-14 21:11:54','2021-07-15 06:45:53','voyager.switch-permissions.index',NULL),(30,1,'Overtime Forms','','_self','voyager-hotdog','#000000',26,6,'2021-07-14 21:17:57','2021-07-15 06:45:53','voyager.lembur-forms.index','null'),(31,1,'Reports','#','_self','voyager-news','#000000',NULL,7,'2021-07-14 22:14:06','2022-04-16 00:45:39',NULL,''),(32,1,'Accesses','','_self','voyager-key',NULL,19,4,'2021-07-15 06:26:26','2021-07-15 06:45:55','voyager.accesses.index',NULL),(33,1,'Users','','_self','voyager-people',NULL,19,3,'2021-07-15 06:32:35','2021-07-15 06:45:57','voyager.user-accesses.index',NULL),(35,1,'Berita Acara Kejadian','','_self',NULL,'#000000',47,5,'2021-09-18 22:17:29','2022-04-16 00:45:36','voyager.berita-acara-kejadian.index','null'),(37,1,'Berita Acara Kerusakans','','_self',NULL,NULL,47,6,'2021-09-18 23:01:29','2022-04-16 00:45:36','voyager.berita-acara-kerusakans.index',NULL),(38,1,'Surat Pernyataan Kedua','','_self',NULL,'#000000',47,2,'2021-09-19 07:45:51','2022-04-16 00:45:36','voyager.surat-pernyataan-keduas.index','null'),(39,1,'Surat Pernyataan','','_self',NULL,'#000000',47,1,'2021-09-19 08:13:16','2021-09-24 20:50:13','voyager.surat-pernyataans.index','null'),(40,1,'Surat Keterangan Pengaduan','','_self',NULL,'#000000',47,3,'2021-09-19 11:10:21','2022-04-16 00:45:36','voyager.surat-keterangan-pengaduans.index','null'),(41,1,'Berita Acara Damais','','_self',NULL,NULL,47,7,'2021-09-19 11:47:41','2022-04-16 00:45:36','voyager.berita-acara-damais.index',NULL),(42,1,'Berita Serah Terima Inventarirs','','_self',NULL,NULL,47,8,'2021-09-22 21:43:22','2022-04-16 00:45:36','voyager.berita-serah-terima-inventarirs.index',NULL),(43,1,'Berita Acara Penemuan Barangs','','_self',NULL,NULL,47,9,'2021-09-22 21:44:36','2022-04-16 00:45:36','voyager.berita-acara-penemuan-barangs.index',NULL),(44,1,'Berita Acara Penertiban Barangs','','_self',NULL,NULL,47,10,'2021-09-22 21:49:43','2022-04-16 00:45:36','voyager.berita-acara-penertiban-barangs.index',NULL),(45,1,'Surat Pemberitahuan','','_self',NULL,'#000000',47,4,'2021-09-22 22:00:09','2022-04-16 00:45:36','voyager.surat-pemberitahuans.index','null'),(46,1,'Berita Tanda Terima Barangs','','_self',NULL,NULL,47,11,'2021-09-22 22:04:15','2022-04-16 00:45:36','voyager.berita-tanda-terima-barangs.index',NULL),(47,1,'Print Recomendation','#','_self','voyager-laptop','#000000',NULL,8,'2021-09-24 20:49:22','2022-04-16 00:45:39',NULL,''),(48,1,'Role Properties','','_self','voyager-tv',NULL,5,3,'2022-02-06 00:48:23','2022-02-06 01:32:41','voyager.role-properties.index',NULL),(49,1,'Group Chats','','_self','voyager-categories',NULL,5,4,'2022-02-06 00:54:00','2022-02-06 01:32:48','voyager.group-chats.index',NULL),(50,1,'Approval Flows','','_self','voyager-cup',NULL,5,5,'2022-02-06 04:49:09','2022-02-06 04:49:36','voyager.approval-flows.index',NULL),(51,1,'Send Invoices','','_self','voyager-receipt',NULL,5,6,'2022-02-17 07:35:28','2022-02-17 07:35:45','voyager.send-invoices.index',NULL),(52,1,'Cso Schedules','','_self','voyager-treasure-open','#000000',5,7,'2022-04-15 23:54:50','2022-04-16 00:05:39','voyager.cso-schedules.index','null'),(53,1,'Water Meters','','_self','voyager-dashboard',NULL,5,8,'2022-04-16 00:12:03','2022-04-16 00:45:39','voyager.water-meters.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `menus_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-06-30 20:28:49','2021-06-30 20:28:49');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2016_01_01_000000_create_pages_table',2),(25,'2016_01_01_000000_create_posts_table',2),(26,'2016_02_15_204651_create_categories_table',2),(27,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `pages_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2021-06-30 20:29:00','2021-06-30 20:29:00');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  KEY `permission_role_permission_id_index` (`permission_id`) USING BTREE,
  KEY `permission_role_role_id_index` (`role_id`) USING BTREE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(1,4),(1,5),(1,14),(1,18),(2,1),(2,5),(2,18),(3,1),(3,18),(4,1),(4,3),(4,5),(4,14),(4,18),(5,1),(6,1),(6,3),(6,14),(6,18),(7,1),(7,3),(7,14),(7,18),(8,1),(8,3),(8,14),(8,18),(9,1),(9,3),(9,14),(9,18),(10,1),(10,3),(10,14),(10,18),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(41,4),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(62,3),(62,5),(62,14),(63,1),(63,3),(63,5),(63,14),(64,1),(64,3),(64,5),(64,14),(65,1),(65,3),(66,1),(66,3),(72,1),(72,14),(73,1),(73,14),(74,1),(74,14),(75,1),(75,14),(76,1),(76,14),(77,1),(77,14),(78,1),(78,14),(79,1),(79,14),(80,1),(80,14),(81,1),(81,14),(82,1),(82,14),(83,1),(83,14),(84,1),(84,14),(85,1),(85,14),(86,1),(86,14),(87,1),(87,14),(88,1),(88,14),(89,1),(89,14),(90,1),(90,14),(91,1),(91,14),(92,1),(92,14),(93,1),(93,14),(94,1),(94,14),(95,1),(95,14),(96,1),(96,14),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(112,1),(112,14),(113,1),(113,14),(114,1),(114,14),(115,1),(115,14),(116,1),(116,14),(122,1),(122,14),(123,1),(123,14),(124,1),(124,14),(125,1),(125,14),(126,1),(126,14),(127,1),(127,14),(128,1),(128,14),(129,1),(129,14),(130,1),(130,14),(131,1),(131,14),(132,1),(132,14),(133,1),(133,14),(134,1),(134,14),(135,1),(135,14),(136,1),(136,14),(137,1),(137,14),(138,1),(138,14),(139,1),(139,14),(140,1),(140,14),(141,1),(141,14),(142,1),(142,14),(143,1),(143,14),(144,1),(144,14),(145,1),(145,14),(146,1),(146,14),(147,1),(147,14),(148,1),(148,14),(149,1),(149,14),(150,1),(150,14),(151,1),(151,14),(152,1),(152,14),(153,1),(153,14),(154,1),(154,14),(155,1),(155,14),(156,1),(156,14),(157,1),(157,14),(158,1),(158,14),(159,1),(159,14),(160,1),(160,14),(161,1),(161,14),(162,1),(162,14),(163,1),(163,14),(164,1),(164,14),(165,1),(165,14),(166,1),(166,14),(167,1),(167,14),(168,1),(168,14),(169,1),(169,14),(170,1),(170,14),(171,1),(171,14),(172,1),(173,1),(174,1),(175,1),(176,1),(177,1),(178,1),(179,1),(180,1),(181,1),(182,1),(183,1),(184,1),(185,1),(186,1),(187,1),(188,1),(189,1),(190,1),(191,1),(192,1),(193,1),(194,1),(195,1),(196,1),(197,1),(198,1),(199,1),(200,1),(201,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `permissions_key_index` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-06-30 20:28:50','2021-06-30 20:28:50'),(2,'browse_bread',NULL,'2021-06-30 20:28:50','2021-06-30 20:28:50'),(3,'browse_database',NULL,'2021-06-30 20:28:50','2021-06-30 20:28:50'),(4,'browse_media',NULL,'2021-06-30 20:28:50','2021-06-30 20:28:50'),(5,'browse_compass',NULL,'2021-06-30 20:28:50','2021-06-30 20:28:50'),(6,'browse_menus','menus','2021-06-30 20:28:50','2021-06-30 20:28:50'),(7,'read_menus','menus','2021-06-30 20:28:51','2021-06-30 20:28:51'),(8,'edit_menus','menus','2021-06-30 20:28:51','2021-06-30 20:28:51'),(9,'add_menus','menus','2021-06-30 20:28:51','2021-06-30 20:28:51'),(10,'delete_menus','menus','2021-06-30 20:28:51','2021-06-30 20:28:51'),(11,'browse_roles','roles','2021-06-30 20:28:51','2021-06-30 20:28:51'),(12,'read_roles','roles','2021-06-30 20:28:51','2021-06-30 20:28:51'),(13,'edit_roles','roles','2021-06-30 20:28:51','2021-06-30 20:28:51'),(14,'add_roles','roles','2021-06-30 20:28:51','2021-06-30 20:28:51'),(15,'delete_roles','roles','2021-06-30 20:28:51','2021-06-30 20:28:51'),(16,'browse_users','users','2021-06-30 20:28:51','2021-06-30 20:28:51'),(17,'read_users','users','2021-06-30 20:28:51','2021-06-30 20:28:51'),(18,'edit_users','users','2021-06-30 20:28:51','2021-06-30 20:28:51'),(19,'add_users','users','2021-06-30 20:28:51','2021-06-30 20:28:51'),(20,'delete_users','users','2021-06-30 20:28:52','2021-06-30 20:28:52'),(21,'browse_settings','settings','2021-06-30 20:28:52','2021-06-30 20:28:52'),(22,'read_settings','settings','2021-06-30 20:28:52','2021-06-30 20:28:52'),(23,'edit_settings','settings','2021-06-30 20:28:52','2021-06-30 20:28:52'),(24,'add_settings','settings','2021-06-30 20:28:52','2021-06-30 20:28:52'),(25,'delete_settings','settings','2021-06-30 20:28:52','2021-06-30 20:28:52'),(26,'browse_categories','categories','2021-06-30 20:28:56','2021-06-30 20:28:56'),(27,'read_categories','categories','2021-06-30 20:28:56','2021-06-30 20:28:56'),(28,'edit_categories','categories','2021-06-30 20:28:56','2021-06-30 20:28:56'),(29,'add_categories','categories','2021-06-30 20:28:56','2021-06-30 20:28:56'),(30,'delete_categories','categories','2021-06-30 20:28:56','2021-06-30 20:28:56'),(31,'browse_posts','posts','2021-06-30 20:28:58','2021-06-30 20:28:58'),(32,'read_posts','posts','2021-06-30 20:28:58','2021-06-30 20:28:58'),(33,'edit_posts','posts','2021-06-30 20:28:58','2021-06-30 20:28:58'),(34,'add_posts','posts','2021-06-30 20:28:58','2021-06-30 20:28:58'),(35,'delete_posts','posts','2021-06-30 20:28:58','2021-06-30 20:28:58'),(36,'browse_pages','pages','2021-06-30 20:29:00','2021-06-30 20:29:00'),(37,'read_pages','pages','2021-06-30 20:29:00','2021-06-30 20:29:00'),(38,'edit_pages','pages','2021-06-30 20:29:00','2021-06-30 20:29:00'),(39,'add_pages','pages','2021-06-30 20:29:00','2021-06-30 20:29:00'),(40,'delete_pages','pages','2021-06-30 20:29:00','2021-06-30 20:29:00'),(41,'browse_hooks',NULL,'2021-06-30 20:29:05','2021-06-30 20:29:05'),(42,'browse_tenants','tenants','2021-07-02 22:54:04','2021-07-02 22:54:04'),(43,'read_tenants','tenants','2021-07-02 22:54:04','2021-07-02 22:54:04'),(44,'edit_tenants','tenants','2021-07-02 22:54:05','2021-07-02 22:54:05'),(45,'add_tenants','tenants','2021-07-02 22:54:05','2021-07-02 22:54:05'),(46,'delete_tenants','tenants','2021-07-02 22:54:05','2021-07-02 22:54:05'),(47,'browse_units','units','2021-07-02 23:19:58','2021-07-02 23:19:58'),(48,'read_units','units','2021-07-02 23:19:58','2021-07-02 23:19:58'),(49,'edit_units','units','2021-07-02 23:19:58','2021-07-02 23:19:58'),(50,'add_units','units','2021-07-02 23:19:58','2021-07-02 23:19:58'),(51,'delete_units','units','2021-07-02 23:19:58','2021-07-02 23:19:58'),(52,'browse_vendors','vendors','2021-07-03 02:29:04','2021-07-03 02:29:04'),(53,'read_vendors','vendors','2021-07-03 02:29:04','2021-07-03 02:29:04'),(54,'edit_vendors','vendors','2021-07-03 02:29:04','2021-07-03 02:29:04'),(55,'add_vendors','vendors','2021-07-03 02:29:04','2021-07-03 02:29:04'),(56,'delete_vendors','vendors','2021-07-03 02:29:04','2021-07-03 02:29:04'),(57,'browse_blast_messages','blast_messages','2021-07-03 02:33:07','2021-07-03 02:33:07'),(58,'read_blast_messages','blast_messages','2021-07-03 02:33:07','2021-07-03 02:33:07'),(59,'edit_blast_messages','blast_messages','2021-07-03 02:33:07','2021-07-03 02:33:07'),(60,'add_blast_messages','blast_messages','2021-07-03 02:33:07','2021-07-03 02:33:07'),(61,'delete_blast_messages','blast_messages','2021-07-03 02:33:07','2021-07-03 02:33:07'),(62,'browse_tickets','tickets','2021-07-11 04:34:41','2021-07-11 04:34:41'),(63,'read_tickets','tickets','2021-07-11 04:34:41','2021-07-11 04:34:41'),(64,'edit_tickets','tickets','2021-07-11 04:34:41','2021-07-11 04:34:41'),(65,'add_tickets','tickets','2021-07-11 04:34:41','2021-07-11 04:34:41'),(66,'delete_tickets','tickets','2021-07-11 04:34:41','2021-07-11 04:34:41'),(72,'browse_good_applications','good_applications','2021-07-11 07:10:57','2021-07-11 07:10:57'),(73,'read_good_applications','good_applications','2021-07-11 07:10:57','2021-07-11 07:10:57'),(74,'edit_good_applications','good_applications','2021-07-11 07:10:57','2021-07-11 07:10:57'),(75,'add_good_applications','good_applications','2021-07-11 07:10:57','2021-07-11 07:10:57'),(76,'delete_good_applications','good_applications','2021-07-11 07:10:57','2021-07-11 07:10:57'),(77,'browse_leave_forms','leave_forms','2021-07-14 20:34:48','2021-07-14 20:34:48'),(78,'read_leave_forms','leave_forms','2021-07-14 20:34:48','2021-07-14 20:34:48'),(79,'edit_leave_forms','leave_forms','2021-07-14 20:34:48','2021-07-14 20:34:48'),(80,'add_leave_forms','leave_forms','2021-07-14 20:34:49','2021-07-14 20:34:49'),(81,'delete_leave_forms','leave_forms','2021-07-14 20:34:49','2021-07-14 20:34:49'),(82,'browse_time_deviations','time_deviations','2021-07-14 20:55:30','2021-07-14 20:55:30'),(83,'read_time_deviations','time_deviations','2021-07-14 20:55:30','2021-07-14 20:55:30'),(84,'edit_time_deviations','time_deviations','2021-07-14 20:55:30','2021-07-14 20:55:30'),(85,'add_time_deviations','time_deviations','2021-07-14 20:55:30','2021-07-14 20:55:30'),(86,'delete_time_deviations','time_deviations','2021-07-14 20:55:30','2021-07-14 20:55:30'),(87,'browse_switch_permissions','switch_permissions','2021-07-14 21:11:53','2021-07-14 21:11:53'),(88,'read_switch_permissions','switch_permissions','2021-07-14 21:11:53','2021-07-14 21:11:53'),(89,'edit_switch_permissions','switch_permissions','2021-07-14 21:11:53','2021-07-14 21:11:53'),(90,'add_switch_permissions','switch_permissions','2021-07-14 21:11:53','2021-07-14 21:11:53'),(91,'delete_switch_permissions','switch_permissions','2021-07-14 21:11:54','2021-07-14 21:11:54'),(92,'browse_lembur_forms','lembur_forms','2021-07-14 21:17:57','2021-07-14 21:17:57'),(93,'read_lembur_forms','lembur_forms','2021-07-14 21:17:57','2021-07-14 21:17:57'),(94,'edit_lembur_forms','lembur_forms','2021-07-14 21:17:57','2021-07-14 21:17:57'),(95,'add_lembur_forms','lembur_forms','2021-07-14 21:17:57','2021-07-14 21:17:57'),(96,'delete_lembur_forms','lembur_forms','2021-07-14 21:17:57','2021-07-14 21:17:57'),(97,'browse_accesses','accesses','2021-07-15 06:26:26','2021-07-15 06:26:26'),(98,'read_accesses','accesses','2021-07-15 06:26:26','2021-07-15 06:26:26'),(99,'edit_accesses','accesses','2021-07-15 06:26:26','2021-07-15 06:26:26'),(100,'add_accesses','accesses','2021-07-15 06:26:26','2021-07-15 06:26:26'),(101,'delete_accesses','accesses','2021-07-15 06:26:26','2021-07-15 06:26:26'),(102,'browse_user_accesses','user_accesses','2021-07-15 06:32:35','2021-07-15 06:32:35'),(103,'read_user_accesses','user_accesses','2021-07-15 06:32:35','2021-07-15 06:32:35'),(104,'edit_user_accesses','user_accesses','2021-07-15 06:32:35','2021-07-15 06:32:35'),(105,'add_user_accesses','user_accesses','2021-07-15 06:32:35','2021-07-15 06:32:35'),(106,'delete_user_accesses','user_accesses','2021-07-15 06:32:35','2021-07-15 06:32:35'),(112,'browse_berita_acara_kejadians','berita_acara_kejadians','2021-09-18 22:17:24','2021-09-18 22:17:24'),(113,'read_berita_acara_kejadians','berita_acara_kejadians','2021-09-18 22:17:25','2021-09-18 22:17:25'),(114,'edit_berita_acara_kejadians','berita_acara_kejadians','2021-09-18 22:17:26','2021-09-18 22:17:26'),(115,'add_berita_acara_kejadians','berita_acara_kejadians','2021-09-18 22:17:27','2021-09-18 22:17:27'),(116,'delete_berita_acara_kejadians','berita_acara_kejadians','2021-09-18 22:17:27','2021-09-18 22:17:27'),(122,'browse_berita_acara_kerusakans','berita_acara_kerusakans','2021-09-18 23:01:23','2021-09-18 23:01:23'),(123,'read_berita_acara_kerusakans','berita_acara_kerusakans','2021-09-18 23:01:23','2021-09-18 23:01:23'),(124,'edit_berita_acara_kerusakans','berita_acara_kerusakans','2021-09-18 23:01:24','2021-09-18 23:01:24'),(125,'add_berita_acara_kerusakans','berita_acara_kerusakans','2021-09-18 23:01:25','2021-09-18 23:01:25'),(126,'delete_berita_acara_kerusakans','berita_acara_kerusakans','2021-09-18 23:01:26','2021-09-18 23:01:26'),(127,'browse_surat_pernyataan_keduas','surat_pernyataan_keduas','2021-09-19 07:45:44','2021-09-19 07:45:44'),(128,'read_surat_pernyataan_keduas','surat_pernyataan_keduas','2021-09-19 07:45:46','2021-09-19 07:45:46'),(129,'edit_surat_pernyataan_keduas','surat_pernyataan_keduas','2021-09-19 07:45:47','2021-09-19 07:45:47'),(130,'add_surat_pernyataan_keduas','surat_pernyataan_keduas','2021-09-19 07:45:48','2021-09-19 07:45:48'),(131,'delete_surat_pernyataan_keduas','surat_pernyataan_keduas','2021-09-19 07:45:48','2021-09-19 07:45:48'),(132,'browse_surat_pernyataans','surat_pernyataans','2021-09-19 08:13:09','2021-09-19 08:13:09'),(133,'read_surat_pernyataans','surat_pernyataans','2021-09-19 08:13:10','2021-09-19 08:13:10'),(134,'edit_surat_pernyataans','surat_pernyataans','2021-09-19 08:13:11','2021-09-19 08:13:11'),(135,'add_surat_pernyataans','surat_pernyataans','2021-09-19 08:13:11','2021-09-19 08:13:11'),(136,'delete_surat_pernyataans','surat_pernyataans','2021-09-19 08:13:14','2021-09-19 08:13:14'),(137,'browse_surat_keterangan_pengaduans','surat_keterangan_pengaduans','2021-09-19 11:10:16','2021-09-19 11:10:16'),(138,'read_surat_keterangan_pengaduans','surat_keterangan_pengaduans','2021-09-19 11:10:17','2021-09-19 11:10:17'),(139,'edit_surat_keterangan_pengaduans','surat_keterangan_pengaduans','2021-09-19 11:10:18','2021-09-19 11:10:18'),(140,'add_surat_keterangan_pengaduans','surat_keterangan_pengaduans','2021-09-19 11:10:19','2021-09-19 11:10:19'),(141,'delete_surat_keterangan_pengaduans','surat_keterangan_pengaduans','2021-09-19 11:10:19','2021-09-19 11:10:19'),(142,'browse_berita_acara_damais','berita_acara_damais','2021-09-19 11:47:37','2021-09-19 11:47:37'),(143,'read_berita_acara_damais','berita_acara_damais','2021-09-19 11:47:38','2021-09-19 11:47:38'),(144,'edit_berita_acara_damais','berita_acara_damais','2021-09-19 11:47:39','2021-09-19 11:47:39'),(145,'add_berita_acara_damais','berita_acara_damais','2021-09-19 11:47:39','2021-09-19 11:47:39'),(146,'delete_berita_acara_damais','berita_acara_damais','2021-09-19 11:47:40','2021-09-19 11:47:40'),(147,'browse_berita_serah_terima_inventarirs','berita_serah_terima_inventarirs','2021-09-22 21:43:18','2021-09-22 21:43:18'),(148,'read_berita_serah_terima_inventarirs','berita_serah_terima_inventarirs','2021-09-22 21:43:18','2021-09-22 21:43:18'),(149,'edit_berita_serah_terima_inventarirs','berita_serah_terima_inventarirs','2021-09-22 21:43:19','2021-09-22 21:43:19'),(150,'add_berita_serah_terima_inventarirs','berita_serah_terima_inventarirs','2021-09-22 21:43:20','2021-09-22 21:43:20'),(151,'delete_berita_serah_terima_inventarirs','berita_serah_terima_inventarirs','2021-09-22 21:43:21','2021-09-22 21:43:21'),(152,'browse_berita_acara_penemuan_barangs','berita_acara_penemuan_barangs','2021-09-22 21:44:32','2021-09-22 21:44:32'),(153,'read_berita_acara_penemuan_barangs','berita_acara_penemuan_barangs','2021-09-22 21:44:32','2021-09-22 21:44:32'),(154,'edit_berita_acara_penemuan_barangs','berita_acara_penemuan_barangs','2021-09-22 21:44:33','2021-09-22 21:44:33'),(155,'add_berita_acara_penemuan_barangs','berita_acara_penemuan_barangs','2021-09-22 21:44:34','2021-09-22 21:44:34'),(156,'delete_berita_acara_penemuan_barangs','berita_acara_penemuan_barangs','2021-09-22 21:44:35','2021-09-22 21:44:35'),(157,'browse_berita_acara_penertiban_barangs','berita_acara_penertiban_barangs','2021-09-22 21:49:38','2021-09-22 21:49:38'),(158,'read_berita_acara_penertiban_barangs','berita_acara_penertiban_barangs','2021-09-22 21:49:39','2021-09-22 21:49:39'),(159,'edit_berita_acara_penertiban_barangs','berita_acara_penertiban_barangs','2021-09-22 21:49:39','2021-09-22 21:49:39'),(160,'add_berita_acara_penertiban_barangs','berita_acara_penertiban_barangs','2021-09-22 21:49:40','2021-09-22 21:49:40'),(161,'delete_berita_acara_penertiban_barangs','berita_acara_penertiban_barangs','2021-09-22 21:49:41','2021-09-22 21:49:41'),(162,'browse_surat_pemberitahuans','surat_pemberitahuans','2021-09-22 22:00:05','2021-09-22 22:00:05'),(163,'read_surat_pemberitahuans','surat_pemberitahuans','2021-09-22 22:00:05','2021-09-22 22:00:05'),(164,'edit_surat_pemberitahuans','surat_pemberitahuans','2021-09-22 22:00:06','2021-09-22 22:00:06'),(165,'add_surat_pemberitahuans','surat_pemberitahuans','2021-09-22 22:00:07','2021-09-22 22:00:07'),(166,'delete_surat_pemberitahuans','surat_pemberitahuans','2021-09-22 22:00:08','2021-09-22 22:00:08'),(167,'browse_berita_tanda_terima_barangs','berita_tanda_terima_barangs','2021-09-22 22:04:11','2021-09-22 22:04:11'),(168,'read_berita_tanda_terima_barangs','berita_tanda_terima_barangs','2021-09-22 22:04:12','2021-09-22 22:04:12'),(169,'edit_berita_tanda_terima_barangs','berita_tanda_terima_barangs','2021-09-22 22:04:12','2021-09-22 22:04:12'),(170,'add_berita_tanda_terima_barangs','berita_tanda_terima_barangs','2021-09-22 22:04:13','2021-09-22 22:04:13'),(171,'delete_berita_tanda_terima_barangs','berita_tanda_terima_barangs','2021-09-22 22:04:14','2021-09-22 22:04:14'),(172,'browse_role_properties','role_properties','2022-02-06 00:48:23','2022-02-06 00:48:23'),(173,'read_role_properties','role_properties','2022-02-06 00:48:23','2022-02-06 00:48:23'),(174,'edit_role_properties','role_properties','2022-02-06 00:48:23','2022-02-06 00:48:23'),(175,'add_role_properties','role_properties','2022-02-06 00:48:23','2022-02-06 00:48:23'),(176,'delete_role_properties','role_properties','2022-02-06 00:48:23','2022-02-06 00:48:23'),(177,'browse_group_chats','group_chats','2022-02-06 00:54:00','2022-02-06 00:54:00'),(178,'read_group_chats','group_chats','2022-02-06 00:54:00','2022-02-06 00:54:00'),(179,'edit_group_chats','group_chats','2022-02-06 00:54:00','2022-02-06 00:54:00'),(180,'add_group_chats','group_chats','2022-02-06 00:54:00','2022-02-06 00:54:00'),(181,'delete_group_chats','group_chats','2022-02-06 00:54:00','2022-02-06 00:54:00'),(182,'browse_approval_flows','approval_flows','2022-02-06 04:49:09','2022-02-06 04:49:09'),(183,'read_approval_flows','approval_flows','2022-02-06 04:49:09','2022-02-06 04:49:09'),(184,'edit_approval_flows','approval_flows','2022-02-06 04:49:09','2022-02-06 04:49:09'),(185,'add_approval_flows','approval_flows','2022-02-06 04:49:09','2022-02-06 04:49:09'),(186,'delete_approval_flows','approval_flows','2022-02-06 04:49:09','2022-02-06 04:49:09'),(187,'browse_send_invoices','send_invoices','2022-02-17 07:35:28','2022-02-17 07:35:28'),(188,'read_send_invoices','send_invoices','2022-02-17 07:35:28','2022-02-17 07:35:28'),(189,'edit_send_invoices','send_invoices','2022-02-17 07:35:28','2022-02-17 07:35:28'),(190,'add_send_invoices','send_invoices','2022-02-17 07:35:28','2022-02-17 07:35:28'),(191,'delete_send_invoices','send_invoices','2022-02-17 07:35:28','2022-02-17 07:35:28'),(192,'browse_cso_schedules','cso_schedules','2022-04-15 23:54:50','2022-04-15 23:54:50'),(193,'read_cso_schedules','cso_schedules','2022-04-15 23:54:50','2022-04-15 23:54:50'),(194,'edit_cso_schedules','cso_schedules','2022-04-15 23:54:50','2022-04-15 23:54:50'),(195,'add_cso_schedules','cso_schedules','2022-04-15 23:54:50','2022-04-15 23:54:50'),(196,'delete_cso_schedules','cso_schedules','2022-04-15 23:54:50','2022-04-15 23:54:50'),(197,'browse_water_meters','water_meters','2022-04-16 00:12:03','2022-04-16 00:12:03'),(198,'read_water_meters','water_meters','2022-04-16 00:12:03','2022-04-16 00:12:03'),(199,'edit_water_meters','water_meters','2022-04-16 00:12:03','2022-04-16 00:12:03'),(200,'add_water_meters','water_meters','2022-04-16 00:12:03','2022-04-16 00:12:03'),(201,'delete_water_meters','water_meters','2022-04-16 00:12:03','2022-04-16 00:12:03');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pivot_send_invoices`
--

DROP TABLE IF EXISTS `pivot_send_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pivot_send_invoices` (
  `unit_id` int(11) NOT NULL,
  `send_invoice_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pivot_send_invoices`
--

LOCK TABLES `pivot_send_invoices` WRITE;
/*!40000 ALTER TABLE `pivot_send_invoices` DISABLE KEYS */;
INSERT INTO `pivot_send_invoices` VALUES (1,1),(3,1),(4,1),(5,1),(2,2),(2,3),(2,4),(5,4),(2,5),(5,5),(5,6),(2,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(4,9),(1,10),(1,11),(2,11),(3,11),(4,11),(5,11),(1,12),(2,12),(3,12),(4,12),(5,12);
/*!40000 ALTER TABLE `pivot_send_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `posts_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-06-30 20:28:58','2021-06-30 20:28:58'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-06-30 20:28:58','2021-06-30 20:28:58'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-06-30 20:28:59','2021-06-30 20:28:59'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-06-30 20:28:59','2021-06-30 20:28:59');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `role_group`
--

DROP TABLE IF EXISTS `role_group`;
/*!50001 DROP VIEW IF EXISTS `role_group`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `role_group` (
  `id` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `lev1` tinyint NOT NULL,
  `lev2` tinyint NOT NULL,
  `lev3` tinyint NOT NULL,
  `lev4` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `role_properties`
--

DROP TABLE IF EXISTS `role_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_role` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_properties`
--

LOCK TABLES `role_properties` WRITE;
/*!40000 ALTER TABLE `role_properties` DISABLE KEYS */;
INSERT INTO `role_properties` VALUES (1,5,'Anggota 1',NULL,'2022-02-06 00:50:44','2022-02-06 00:50:44'),(2,5,'Anggota 2',NULL,'2022-02-06 00:50:55','2022-02-06 00:50:55'),(3,5,'Danru 1',NULL,'2022-02-06 00:51:34','2022-02-06 00:51:34'),(4,5,'Danru 2',NULL,'2022-02-06 00:51:44','2022-02-06 00:51:44'),(5,6,'Supervisor','Supervisor of cleaning service officer','2022-02-06 06:04:20','2022-02-06 06:04:20'),(6,6,'Regu I CSO','Role Anggota tim CSO','2022-02-06 06:07:00','2022-04-17 00:01:35'),(7,5,'Admin Security',NULL,'2022-02-09 06:39:58','2022-02-09 06:39:58'),(8,5,'Dansek',NULL,'2022-04-16 23:22:09','2022-04-16 23:22:09'),(9,6,'Regu II CSO','Regu II CSO','2022-04-17 00:01:59','2022-04-17 00:01:59'),(10,5,'Admin Security',NULL,'2022-04-17 04:36:48','2022-04-17 04:36:48');
/*!40000 ALTER TABLE `role_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `roles_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2021-06-30 20:28:50','2021-06-30 20:28:50'),(2,'user','Normal User','2021-06-30 20:28:50','2021-06-30 20:28:50'),(3,'Customer Services','Customer Services','2021-07-02 22:12:57','2021-07-02 22:12:57'),(4,'Mechanical and Engineering','Mechanical and Engineering','2021-07-02 22:13:27','2021-07-02 22:13:27'),(5,'SECURITY','SECURITY','2021-07-02 22:14:11','2021-07-02 22:14:11'),(6,'Cleaning Service Officer','Cleaning Service Officer','2021-07-02 22:14:26','2021-07-02 22:14:26'),(7,'Human Resource','Human Resource','2021-07-02 22:14:52','2021-07-02 22:14:52'),(8,'PPRS','PPRS','2021-07-02 22:15:05','2021-07-02 22:15:05'),(9,'receptionist','receptionist','2021-07-02 22:15:37','2021-07-02 22:15:37'),(10,'GA','GA','2021-07-02 22:17:01','2021-07-02 22:17:01'),(11,'Legal','Legal','2021-07-02 22:17:14','2021-07-02 22:17:14'),(12,'Valet','Valet','2021-07-02 22:17:42','2021-07-02 22:17:42'),(13,'Collection','Collection','2021-07-02 22:18:00','2021-07-02 22:18:00'),(14,'Admin Security','Admin Security','2021-10-27 22:20:06','2021-10-27 22:20:06'),(18,'Purchasing','Purchasing','2022-02-13 03:02:13','2022-02-13 03:02:13'),(19,'Accounting','Accounting','2022-03-19 03:40:07','2022-03-19 03:40:07'),(20,'Cashier','Cashier','2022-03-19 03:43:53','2022-03-19 03:43:53');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_invoices`
--

DROP TABLE IF EXISTS `send_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_sent` timestamp NULL DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_invoices`
--

LOCK TABLES `send_invoices` WRITE;
/*!40000 ALTER TABLE `send_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `send_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `settings_key_unique` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','The City Resort Apartement','','text',1,'Site'),(2,'site.description','Site Description',NULL,'','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','CityResort','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Building Management System The City Resort Apartment','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','425202887682-6cirrc7e8j2vimn1voisrpov39345dkn.apps.googleusercontent.com','','text',1,'Admin'),(11,'site.site_identity','Site Identity','The City Resort',NULL,'text',6,'Site'),(12,'admin.logo_security','Logo Security','settings\\September2021\\tmeKkn3np2dVp2tTkkgX.png',NULL,'image',7,'Admin'),(13,'admin.logo_crr','Logo Crr','settings\\September2021\\laDtH6iSPGNDieJHdl3Y.png',NULL,'image',8,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_keterangan_pengaduans`
--

DROP TABLE IF EXISTS `surat_keterangan_pengaduans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_keterangan_pengaduans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_identitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kronologi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_keterangan_pengaduans`
--

LOCK TABLES `surat_keterangan_pengaduans` WRITE;
/*!40000 ALTER TABLE `surat_keterangan_pengaduans` DISABLE KEYS */;
/*!40000 ALTER TABLE `surat_keterangan_pengaduans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_pemberitahuans`
--

DROP TABLE IF EXISTS `surat_pemberitahuans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_pemberitahuans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kepada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_pemberitahuans`
--

LOCK TABLES `surat_pemberitahuans` WRITE;
/*!40000 ALTER TABLE `surat_pemberitahuans` DISABLE KEYS */;
/*!40000 ALTER TABLE `surat_pemberitahuans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_pernyataan_keduas`
--

DROP TABLE IF EXISTS `surat_pernyataan_keduas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_pernyataan_keduas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_pernyataan_keduas`
--

LOCK TABLES `surat_pernyataan_keduas` WRITE;
/*!40000 ALTER TABLE `surat_pernyataan_keduas` DISABLE KEYS */;
/*!40000 ALTER TABLE `surat_pernyataan_keduas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_pernyataans`
--

DROP TABLE IF EXISTS `surat_pernyataans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_pernyataans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_identitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_pernyataans`
--

LOCK TABLES `surat_pernyataans` WRITE;
/*!40000 ALTER TABLE `surat_pernyataans` DISABLE KEYS */;
/*!40000 ALTER TABLE `surat_pernyataans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_permissions`
--

DROP TABLE IF EXISTS `switch_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pemohon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  `delegate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_sched` int(11) DEFAULT NULL,
  `next_approver` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_flow` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_permissions`
--

LOCK TABLES `switch_permissions` WRITE;
/*!40000 ALTER TABLE `switch_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kk_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correspondence_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `isinactive` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verified` date DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (2,'Hardi Salim','3173060105810011','123123123123123','Jl. P Ujung nomor 10,  RT.009/RW.11, Kebon Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia','Jl. P Ujung nomor 10,  RT.009/RW.11, Kebon Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia','Hardisalim77@gmail.com','081288372226',NULL,NULL,'1',NULL,'2021-07-15 06:47:00','2022-02-18 01:44:19',NULL,1,'[\"1\"]'),(3,'Raymond Lesmana','3173060105810011','123123123123123','Jl. P Ujung nomor 10,  RT.009/RW.11, Kebon Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia',NULL,'raymond.wlesmana@gmail.com','081288372226','2022-02-02',NULL,'1',NULL,'2022-02-17 07:20:00','2022-02-17 10:54:38',NULL,2,'[\"1\"]'),(4,'Ramon','3173060105810011','123123123123123','Jl. P Ujung nomor 10,  RT.009/RW.11, Kebon Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia',NULL,'ramon050910@gmail.com','081288372226',NULL,NULL,'1',NULL,'2022-02-17 07:20:00','2022-02-18 01:44:12',NULL,3,'[\"1\"]'),(5,'Andi Gscom','3173060105810011','123123123123123','Jl. P Ujung nomor 10,  RT.009/RW.11, Kebon Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia',NULL,'Andigscom@yahoo.com','081288372226',NULL,NULL,'1',NULL,'2022-02-17 07:21:00','2022-02-18 01:44:03',NULL,4,'[\"1\"]'),(6,'Daniel Tan','3173060105810011','123123123123123','Jl. P Ujung nomor 10,  RT.009/RW.11, Kebon Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia',NULL,'danieltan1609@gmail.com','081288372226',NULL,NULL,'1',NULL,'2022-02-17 07:22:00','2022-02-18 00:11:55',NULL,5,'[\"1\"]');
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tenant` int(11) DEFAULT NULL,
  `realization` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `realization_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (26,'Test Security','test','Apartement','3',NULL,'Done',NULL,'55','2022-04-17 04:31:35','2022-04-17 05:05:35',NULL,'test','test aman',1,'BtwPBq0z36dqm3qd7qkCdEKscYfRcnfU9GeCkQPt.jpg','Cg6IU6iMnRGemitPraqRrS4y10pTnIx7cciuxRhU.jpg');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickket_pics`
--

DROP TABLE IF EXISTS `tickket_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickket_pics` (
  `ticket_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`ticket_id`,`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickket_pics`
--

LOCK TABLES `tickket_pics` WRITE;
/*!40000 ALTER TABLE `tickket_pics` DISABLE KEYS */;
INSERT INTO `tickket_pics` VALUES (13,6),(13,7),(14,10),(14,11),(15,10),(15,11),(16,10),(16,11),(17,9),(17,11),(19,10),(19,11),(20,10),(21,10),(22,10),(23,10),(23,11),(24,10),(25,9),(26,54);
/*!40000 ALTER TABLE `tickket_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_deviations`
--

DROP TABLE IF EXISTS `time_deviations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_deviations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  `deviation_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_deviations`
--

LOCK TABLES `time_deviations` WRITE;
/*!40000 ALTER TABLE `time_deviations` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_deviations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towers`
--

DROP TABLE IF EXISTS `towers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `towers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towers`
--

LOCK TABLES `towers` WRITE;
/*!40000 ALTER TABLE `towers` DISABLE KEYS */;
INSERT INTO `towers` VALUES (1,'Alamanda'),(2,'Bugenvil'),(3,'Marigold'),(4,'Orchid'),(5,'Town House'),(6,'Store');
/*!40000 ALTER TABLE `towers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2021-06-30 20:29:00','2021-06-30 20:29:00'),(2,'data_types','display_name_singular',6,'pt','Página','2021-06-30 20:29:01','2021-06-30 20:29:01'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2021-06-30 20:29:01','2021-06-30 20:29:01'),(4,'data_types','display_name_singular',4,'pt','Categoria','2021-06-30 20:29:01','2021-06-30 20:29:01'),(5,'data_types','display_name_singular',2,'pt','Menu','2021-06-30 20:29:01','2021-06-30 20:29:01'),(6,'data_types','display_name_singular',3,'pt','Função','2021-06-30 20:29:01','2021-06-30 20:29:01'),(7,'data_types','display_name_plural',5,'pt','Posts','2021-06-30 20:29:01','2021-06-30 20:29:01'),(8,'data_types','display_name_plural',6,'pt','Páginas','2021-06-30 20:29:01','2021-06-30 20:29:01'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2021-06-30 20:29:01','2021-06-30 20:29:01'),(10,'data_types','display_name_plural',4,'pt','Categorias','2021-06-30 20:29:01','2021-06-30 20:29:01'),(11,'data_types','display_name_plural',2,'pt','Menus','2021-06-30 20:29:02','2021-06-30 20:29:02'),(12,'data_types','display_name_plural',3,'pt','Funções','2021-06-30 20:29:02','2021-06-30 20:29:02'),(13,'categories','slug',1,'pt','categoria-1','2021-06-30 20:29:02','2021-06-30 20:29:02'),(14,'categories','name',1,'pt','Categoria 1','2021-06-30 20:29:02','2021-06-30 20:29:02'),(15,'categories','slug',2,'pt','categoria-2','2021-06-30 20:29:02','2021-06-30 20:29:02'),(16,'categories','name',2,'pt','Categoria 2','2021-06-30 20:29:02','2021-06-30 20:29:02'),(17,'pages','title',1,'pt','Olá Mundo','2021-06-30 20:29:02','2021-06-30 20:29:02'),(18,'pages','slug',1,'pt','ola-mundo','2021-06-30 20:29:02','2021-06-30 20:29:02'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2021-06-30 20:29:02','2021-06-30 20:29:02'),(20,'menu_items','title',1,'pt','Painel de Controle','2021-06-30 20:29:02','2021-06-30 20:29:02'),(21,'menu_items','title',2,'pt','Media','2021-06-30 20:29:03','2021-06-30 20:29:03'),(22,'menu_items','title',12,'pt','Publicações','2021-06-30 20:29:03','2021-06-30 20:29:03'),(23,'menu_items','title',3,'pt','Utilizadores','2021-06-30 20:29:03','2021-06-30 20:29:03'),(24,'menu_items','title',11,'pt','Categorias','2021-06-30 20:29:03','2021-06-30 20:29:03'),(25,'menu_items','title',13,'pt','Páginas','2021-06-30 20:29:03','2021-06-30 20:29:03'),(26,'menu_items','title',4,'pt','Funções','2021-06-30 20:29:03','2021-06-30 20:29:03'),(27,'menu_items','title',5,'pt','Ferramentas','2021-06-30 20:29:03','2021-06-30 20:29:03'),(28,'menu_items','title',6,'pt','Menus','2021-06-30 20:29:03','2021-06-30 20:29:03'),(29,'menu_items','title',7,'pt','Base de dados','2021-06-30 20:29:04','2021-06-30 20:29:04'),(30,'menu_items','title',10,'pt','Configurações','2021-06-30 20:29:04','2021-06-30 20:29:04');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `large_m2` double DEFAULT NULL,
  `daya_va` double DEFAULT NULL,
  `water_main_cost` double DEFAULT NULL,
  `bast` double DEFAULT NULL,
  `va_bca` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_mandiri` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `electric_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `water_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_bedroom` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_bathroom` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balcony` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isinactive` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `max_key_access` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2691 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,55,4400,1500,NULL,'1111111','2222222','123456798','123456498','2','[\"1\"]','Hardi Salim',NULL,NULL,NULL,NULL,'APBO-06012','false',NULL,'2021-07-15 04:13:51','2022-02-17 07:19:21',NULL),(2,55,4400,1500,NULL,'1111111','2222222','123456798','123456498','2','[\"1\"]','raymond wlesmana',NULL,NULL,NULL,NULL,'APOR-11021','false',NULL,'2021-07-15 04:13:51','2021-07-15 04:52:05',NULL),(3,55,4400,1500,NULL,'1111111','2222222','123456798','123456498','2','[\"1\"]','Ramon',NULL,NULL,NULL,NULL,'THMB-0F08A','false',NULL,'2021-07-15 04:13:51','2021-07-15 04:52:05',NULL),(4,55,4400,1500,NULL,'1111111','2222222','123456798','123456498','2','[\"1\"]','Andi Gscom',NULL,NULL,NULL,NULL,'APOR-02006','false',NULL,'2021-07-15 04:13:51','2021-07-15 04:52:05',NULL),(5,55,4400,1500,NULL,'1111111','2222222','123456798','123456498','2','[\"1\"]','Daniel Tan',NULL,NULL,NULL,NULL,'APBO-09001','false',NULL,'2021-07-15 04:13:51','2021-07-15 04:52:05',NULL),(6,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2','[\"1\"]','INDRAJANI HALIM',NULL,NULL,NULL,NULL,'APAL-01001','FALSE',3,NULL,NULL,NULL),(7,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TANTRA EFENDI TAN',NULL,NULL,NULL,NULL,'APAL-01002','FALSE',4,NULL,NULL,NULL),(8,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INDRAJANI HALIM',NULL,NULL,NULL,NULL,'APAL-01003','FALSE',5,NULL,NULL,NULL),(9,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Moij Soe Tjoi',NULL,NULL,NULL,NULL,'APAL-01005','FALSE',6,NULL,NULL,NULL),(10,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ADE DIANA MERRY PAKASI',NULL,NULL,NULL,NULL,'APAL-01006','FALSE',7,NULL,NULL,NULL),(11,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TAN SIAUW DING',NULL,NULL,NULL,NULL,'APAL-01007','FALSE',8,NULL,NULL,NULL),(12,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MICHAEL',NULL,NULL,NULL,NULL,'APAL-01008','FALSE',9,NULL,NULL,NULL),(13,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IWAN TJAHYADIKARTA/EBDIANORA JAYA SS',NULL,NULL,NULL,NULL,'APAL-01009','FALSE',10,NULL,NULL,NULL),(14,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Melinda Handayani Lim',NULL,NULL,NULL,NULL,'APAL-01010','FALSE',11,NULL,NULL,NULL),(15,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJUT HAFNI LECHASARI QQ PT. KMP',NULL,NULL,NULL,NULL,'APAL-01011','FALSE',12,NULL,NULL,NULL),(16,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Prof.Dr.Eko Sri Margianti, SE.MM.',NULL,NULL,NULL,NULL,'APAL-01012','FALSE',13,NULL,NULL,NULL),(17,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Prof.Dr.Eko Sri Margianti, SE.MM.',NULL,NULL,NULL,NULL,'APAL-01016','FALSE',14,NULL,NULL,NULL),(18,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Yenny Mandak',NULL,NULL,NULL,NULL,'APAL-02001','FALSE',15,NULL,NULL,NULL),(19,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRS. MULIANTO SALIM',NULL,NULL,NULL,NULL,'APAL-02002','FALSE',16,NULL,NULL,NULL),(20,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MIRANDA D. WIDIASTUTI K',NULL,NULL,NULL,NULL,'APAL-02003','FALSE',17,NULL,NULL,NULL),(21,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MINI WIJAYA',NULL,NULL,NULL,NULL,'APAL-02005','FALSE',18,NULL,NULL,NULL),(22,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NELLY SURYANTO LEE',NULL,NULL,NULL,NULL,'APAL-02006','FALSE',19,NULL,NULL,NULL),(23,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LENA SURJA TANI',NULL,NULL,NULL,NULL,'APAL-02007','FALSE',20,NULL,NULL,NULL),(24,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANNA LISA',NULL,NULL,NULL,NULL,'APAL-02008','FALSE',21,NULL,NULL,NULL),(25,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YUNINGSIH',NULL,NULL,NULL,NULL,'APAL-02009','FALSE',22,NULL,NULL,NULL),(26,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDREAS HIMAWAN',NULL,NULL,NULL,NULL,'APAL-02010','FALSE',23,NULL,NULL,NULL),(27,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MEILIANA PURNAMA TJIN',NULL,NULL,NULL,NULL,'APAL-02011','FALSE',24,NULL,NULL,NULL),(28,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDREAS',NULL,NULL,NULL,NULL,'APAL-02012','FALSE',25,NULL,NULL,NULL),(29,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUSIE SUHIT',NULL,NULL,NULL,NULL,'APAL-02016','FALSE',26,NULL,NULL,NULL),(30,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EVIE PRANATA',NULL,NULL,NULL,NULL,'APAL-03001','FALSE',27,NULL,NULL,NULL),(31,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KARLA A HELENA',NULL,NULL,NULL,NULL,'APAL-03002','FALSE',28,NULL,NULL,NULL),(32,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FIFI YOUNG',NULL,NULL,NULL,NULL,'APAL-03003','FALSE',29,NULL,NULL,NULL),(33,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HINDI',NULL,NULL,NULL,NULL,'APAL-03005','FALSE',30,NULL,NULL,NULL),(34,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIE KIM LIAN',NULL,NULL,NULL,NULL,'APAL-03006','FALSE',31,NULL,NULL,NULL),(35,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PARLINDUNGAN',NULL,NULL,NULL,NULL,'APAL-03007','FALSE',32,NULL,NULL,NULL),(36,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YULIA JAYA NIRMAWATI,SE',NULL,NULL,NULL,NULL,'APAL-03008','FALSE',33,NULL,NULL,NULL),(37,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APAL-03009','FALSE',34,NULL,NULL,NULL),(38,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRA TJHIN',NULL,NULL,NULL,NULL,'APAL-03010','FALSE',35,NULL,NULL,NULL),(39,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HUSNI TANZIL',NULL,NULL,NULL,NULL,'APAL-03011','FALSE',36,NULL,NULL,NULL),(40,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDRE BASOEKI',NULL,NULL,NULL,NULL,'APAL-03012','FALSE',37,NULL,NULL,NULL),(41,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Yunah',NULL,NULL,NULL,NULL,'APAL-03016','FALSE',38,NULL,NULL,NULL),(42,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DIANA',NULL,NULL,NULL,NULL,'APAL-05001','FALSE',39,NULL,NULL,NULL),(43,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RISKA SUMARDJO',NULL,NULL,NULL,NULL,'APAL-05002','FALSE',40,NULL,NULL,NULL),(44,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Vivi Gunawan',NULL,NULL,NULL,NULL,'APAL-05003','FALSE',41,NULL,NULL,NULL),(45,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Yansen Nur',NULL,NULL,NULL,NULL,'APAL-05005','FALSE',42,NULL,NULL,NULL),(46,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JAFAR ARMAYA DJAKARMAN',NULL,NULL,NULL,NULL,'APAL-05006','FALSE',43,NULL,NULL,NULL),(47,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM TJOEN ENG',NULL,NULL,NULL,NULL,'APAL-05007','FALSE',44,NULL,NULL,NULL),(48,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDDY PRAJITNO DAN LINDAWATI SUTANTO',NULL,NULL,NULL,NULL,'APAL-05008','FALSE',45,NULL,NULL,NULL),(49,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JANSEN ERICK SIANTURI',NULL,NULL,NULL,NULL,'APAL-05009','FALSE',46,NULL,NULL,NULL),(50,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MERY',NULL,NULL,NULL,NULL,'APAL-05010','FALSE',47,NULL,NULL,NULL),(51,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Tjai Kan Mi',NULL,NULL,NULL,NULL,'APAL-05011','FALSE',48,NULL,NULL,NULL),(52,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ROBERT KOSTAN',NULL,NULL,NULL,NULL,'APAL-05012','FALSE',49,NULL,NULL,NULL),(53,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YULIUS',NULL,NULL,NULL,NULL,'APAL-05016','FALSE',50,NULL,NULL,NULL),(54,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JOHAN LENSA',NULL,NULL,NULL,NULL,'APAL-06001','FALSE',51,NULL,NULL,NULL),(55,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TITI TOHA',NULL,NULL,NULL,NULL,'APAL-06002','FALSE',52,NULL,NULL,NULL),(56,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FENNY BUDI WARDANA',NULL,NULL,NULL,NULL,'APAL-06003','FALSE',53,NULL,NULL,NULL),(57,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TIAN MAY KIAUW',NULL,NULL,NULL,NULL,'APAL-06005','FALSE',54,NULL,NULL,NULL),(58,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KENNY SUKIMAN & PAULA SUKIMAN',NULL,NULL,NULL,NULL,'APAL-06006','FALSE',55,NULL,NULL,NULL),(59,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERLISA MARINI',NULL,NULL,NULL,NULL,'APAL-06007','FALSE',56,NULL,NULL,NULL),(60,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIAUW SIAT MOY',NULL,NULL,NULL,NULL,'APAL-06008','FALSE',57,NULL,NULL,NULL),(61,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIAN KING HONG',NULL,NULL,NULL,NULL,'APAL-06009','FALSE',58,NULL,NULL,NULL),(62,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Suhardi',NULL,NULL,NULL,NULL,'APAL-06010','FALSE',59,NULL,NULL,NULL),(63,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SENTIYONO & ANNIE',NULL,NULL,NULL,NULL,'APAL-06011','FALSE',60,NULL,NULL,NULL),(64,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Mursidi Tan',NULL,NULL,NULL,NULL,'APAL-06012','FALSE',61,NULL,NULL,NULL),(65,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Valentina Nanin',NULL,NULL,NULL,NULL,'APAL-06016','FALSE',62,NULL,NULL,NULL),(66,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FERRY SUSANTO',NULL,NULL,NULL,NULL,'APAL-07001','FALSE',63,NULL,NULL,NULL),(67,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KOSASIH INDRIJANTO',NULL,NULL,NULL,NULL,'APAL-07002','FALSE',64,NULL,NULL,NULL),(68,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DEWI SHANTI',NULL,NULL,NULL,NULL,'APAL-07003','FALSE',65,NULL,NULL,NULL),(69,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Yenny Soetantijo, SH',NULL,NULL,NULL,NULL,'APAL-07005','FALSE',66,NULL,NULL,NULL),(70,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARDILUN, ONG',NULL,NULL,NULL,NULL,'APAL-07006','FALSE',67,NULL,NULL,NULL),(71,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JUHANES',NULL,NULL,NULL,NULL,'APAL-07007','FALSE',68,NULL,NULL,NULL),(72,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARIFIN',NULL,NULL,NULL,NULL,'APAL-07008','FALSE',69,NULL,NULL,NULL),(73,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THEN MIE LIE',NULL,NULL,NULL,NULL,'APAL-07009','FALSE',70,NULL,NULL,NULL),(74,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MEIRI',NULL,NULL,NULL,NULL,'APAL-07010','FALSE',71,NULL,NULL,NULL),(75,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDIMAN',NULL,NULL,NULL,NULL,'APAL-07011','FALSE',72,NULL,NULL,NULL),(76,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EKSAN JUDIONO',NULL,NULL,NULL,NULL,'APAL-07012','FALSE',73,NULL,NULL,NULL),(77,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SYLVIE ANGELA & I LAN TASLIM',NULL,NULL,NULL,NULL,'APAL-07016','FALSE',74,NULL,NULL,NULL),(78,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRIK HAKIM',NULL,NULL,NULL,NULL,'APAL-08001','FALSE',75,NULL,NULL,NULL),(79,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANNA EVILOREN',NULL,NULL,NULL,NULL,'APAL-08002','FALSE',76,NULL,NULL,NULL),(80,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENNI CHANDRAWATI',NULL,NULL,NULL,NULL,'APAL-08003','FALSE',77,NULL,NULL,NULL),(81,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JANI FIRMAN RONITUA SARAGIH .SE',NULL,NULL,NULL,NULL,'APAL-08005','FALSE',78,NULL,NULL,NULL),(82,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TINNEKE DJONG',NULL,NULL,NULL,NULL,'APAL-08006','FALSE',79,NULL,NULL,NULL),(83,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SHENNY HARTADY',NULL,NULL,NULL,NULL,'APAL-08007','FALSE',80,NULL,NULL,NULL),(84,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DR. ENDANG SILANIGSIH S.',NULL,NULL,NULL,NULL,'APAL-08008','FALSE',81,NULL,NULL,NULL),(85,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELIA & LEONARDO PHUNISAR L.',NULL,NULL,NULL,NULL,'APAL-08009','FALSE',82,NULL,NULL,NULL),(86,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARIMAN WIBOWO',NULL,NULL,NULL,NULL,'APAL-08010','FALSE',83,NULL,NULL,NULL),(87,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SILVANA PRIYATNO',NULL,NULL,NULL,NULL,'APAL-08011','FALSE',84,NULL,NULL,NULL),(88,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANA',NULL,NULL,NULL,NULL,'APAL-08012','FALSE',85,NULL,NULL,NULL),(89,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LINDA SUGIANTO',NULL,NULL,NULL,NULL,'APAL-08016','FALSE',86,NULL,NULL,NULL),(90,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WIWIE SOETIONO',NULL,NULL,NULL,NULL,'APAL-09001','FALSE',87,NULL,NULL,NULL),(91,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AGUSTA',NULL,NULL,NULL,NULL,'APAL-09002','FALSE',88,NULL,NULL,NULL),(92,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENNY PURWATI',NULL,NULL,NULL,NULL,'APAL-09003','FALSE',89,NULL,NULL,NULL),(93,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CHRISTINE PRATINI',NULL,NULL,NULL,NULL,'APAL-09005','FALSE',90,NULL,NULL,NULL),(94,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Yennita Efianti',NULL,NULL,NULL,NULL,'APAL-09006','FALSE',91,NULL,NULL,NULL),(95,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'VIOLETTA MELISSA',NULL,NULL,NULL,NULL,'APAL-09007','FALSE',92,NULL,NULL,NULL),(96,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AJATI',NULL,NULL,NULL,NULL,'APAL-09008','FALSE',93,NULL,NULL,NULL),(97,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUANSA TANDRIAN TAN',NULL,NULL,NULL,NULL,'APAL-09009','FALSE',94,NULL,NULL,NULL),(98,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WONG FAN KIE',NULL,NULL,NULL,NULL,'APAL-09010','FALSE',95,NULL,NULL,NULL),(99,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KHO KWAN JAW',NULL,NULL,NULL,NULL,'APAL-09011','FALSE',96,NULL,NULL,NULL),(100,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YOHAN CAHYADI GANI',NULL,NULL,NULL,NULL,'APAL-09012','FALSE',97,NULL,NULL,NULL),(101,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRY JOHAN HANDOKO',NULL,NULL,NULL,NULL,'APAL-09016','FALSE',98,NULL,NULL,NULL),(102,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'OLIVIA',NULL,NULL,NULL,NULL,'APAL-10001','FALSE',99,NULL,NULL,NULL),(103,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YOICE ERAWATI',NULL,NULL,NULL,NULL,'APAL-10002','FALSE',100,NULL,NULL,NULL),(104,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENKY WIRAWAN',NULL,NULL,NULL,NULL,'APAL-10003','FALSE',101,NULL,NULL,NULL),(105,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SATRIO GUNAWAN ANG',NULL,NULL,NULL,NULL,'APAL-10005','FALSE',102,NULL,NULL,NULL),(106,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDWARD HALIM SE',NULL,NULL,NULL,NULL,'APAL-10006','FALSE',103,NULL,NULL,NULL),(107,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MICHELLE LOUISA',NULL,NULL,NULL,NULL,'APAL-10007','FALSE',104,NULL,NULL,NULL),(108,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIE MULIANI',NULL,NULL,NULL,NULL,'APAL-10008','FALSE',105,NULL,NULL,NULL),(109,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YONATHAN',NULL,NULL,NULL,NULL,'APAL-10009','FALSE',106,NULL,NULL,NULL),(110,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TAN SOE HIAN',NULL,NULL,NULL,NULL,'APAL-10010','FALSE',107,NULL,NULL,NULL),(111,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANTO SALOMON WONG',NULL,NULL,NULL,NULL,'APAL-10011','FALSE',108,NULL,NULL,NULL),(112,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIE MEI (MAYA)',NULL,NULL,NULL,NULL,'APAL-10012','FALSE',109,NULL,NULL,NULL),(113,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Sukiman Wongso',NULL,NULL,NULL,NULL,'APAL-10016','FALSE',110,NULL,NULL,NULL),(114,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STANLEY SUTANTO',NULL,NULL,NULL,NULL,'APAL-11001','FALSE',111,NULL,NULL,NULL),(115,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALBERT WIJAYA',NULL,NULL,NULL,NULL,'APAL-11002','FALSE',112,NULL,NULL,NULL),(116,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDWARD HAKIM',NULL,NULL,NULL,NULL,'APAL-11003','FALSE',113,NULL,NULL,NULL),(117,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HIANA SUGIANATA',NULL,NULL,NULL,NULL,'APAL-11005','FALSE',114,NULL,NULL,NULL),(118,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'VERIANA',NULL,NULL,NULL,NULL,'APAL-11006','FALSE',115,NULL,NULL,NULL),(119,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YENNY MARAS,Tjin',NULL,NULL,NULL,NULL,'APAL-11007','FALSE',116,NULL,NULL,NULL),(120,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUSANTY',NULL,NULL,NULL,NULL,'APAL-11008','FALSE',117,NULL,NULL,NULL),(121,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NENENG ROYANTI',NULL,NULL,NULL,NULL,'APAL-11009','FALSE',118,NULL,NULL,NULL),(122,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SOFIAN',NULL,NULL,NULL,NULL,'APAL-11010','FALSE',119,NULL,NULL,NULL),(123,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JAHAYA',NULL,NULL,NULL,NULL,'APAL-11011','FALSE',120,NULL,NULL,NULL),(124,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WIWI',NULL,NULL,NULL,NULL,'APAL-11012','FALSE',121,NULL,NULL,NULL),(125,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YESSI LESMANA',NULL,NULL,NULL,NULL,'APAL-11016','FALSE',122,NULL,NULL,NULL),(126,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LINDA RAZALI',NULL,NULL,NULL,NULL,'APAL-12001','FALSE',123,NULL,NULL,NULL),(127,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUGIANTO',NULL,NULL,NULL,NULL,'APAL-12002','FALSE',124,NULL,NULL,NULL),(128,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LITARTY ELYA HARTATI',NULL,NULL,NULL,NULL,'APAL-12003','FALSE',125,NULL,NULL,NULL),(129,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARTINUS.T',NULL,NULL,NULL,NULL,'APAL-12005','FALSE',126,NULL,NULL,NULL),(130,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEVEN LUKMANDA',NULL,NULL,NULL,NULL,'APAL-12006','FALSE',127,NULL,NULL,NULL),(131,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Sartono',NULL,NULL,NULL,NULL,'APAL-12007','FALSE',128,NULL,NULL,NULL),(132,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUSANTI HANDOJO',NULL,NULL,NULL,NULL,'APAL-12008','FALSE',129,NULL,NULL,NULL),(133,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TATY / BIE TEN',NULL,NULL,NULL,NULL,'APAL-12009','FALSE',130,NULL,NULL,NULL),(134,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUTIANA TJOENG',NULL,NULL,NULL,NULL,'APAL-12010','FALSE',131,NULL,NULL,NULL),(135,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TATY / BIE TEN',NULL,NULL,NULL,NULL,'APAL-12011','FALSE',132,NULL,NULL,NULL),(136,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELLY HERNAWATI HAIDIR',NULL,NULL,NULL,NULL,'APAL-12012','FALSE',133,NULL,NULL,NULL),(137,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELLY HERNAWATI HAIDIR',NULL,NULL,NULL,NULL,'APAL-12016','FALSE',134,NULL,NULL,NULL),(138,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MICHAEL',NULL,NULL,NULL,NULL,'APAL-15001','FALSE',135,NULL,NULL,NULL),(139,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRG.SUSANTO',NULL,NULL,NULL,NULL,'APAL-15002','FALSE',136,NULL,NULL,NULL),(140,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BONG THIAN SIAN',NULL,NULL,NULL,NULL,'APAL-15003','FALSE',137,NULL,NULL,NULL),(141,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ENNY WIDJAJA',NULL,NULL,NULL,NULL,'APAL-15005','FALSE',138,NULL,NULL,NULL),(142,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJHIA FUK SUN',NULL,NULL,NULL,NULL,'APAL-15006','FALSE',139,NULL,NULL,NULL),(143,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HELEN NURHAYATI',NULL,NULL,NULL,NULL,'APAL-15007','FALSE',140,NULL,NULL,NULL),(144,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NADALSYAH',NULL,NULL,NULL,NULL,'APAL-15008','FALSE',141,NULL,NULL,NULL),(145,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BETTY',NULL,NULL,NULL,NULL,'APAL-15009','FALSE',142,NULL,NULL,NULL),(146,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DJOKO BUDIJAWAN DHARMA',NULL,NULL,NULL,NULL,'APAL-15010','FALSE',143,NULL,NULL,NULL),(147,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AMELIA SOLIMAN',NULL,NULL,NULL,NULL,'APAL-15011','FALSE',144,NULL,NULL,NULL),(148,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIA SIOE LENG',NULL,NULL,NULL,NULL,'APAL-15012','FALSE',145,NULL,NULL,NULL),(149,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Rozak & Filicia Rozak',NULL,NULL,NULL,NULL,'APAL-15016','FALSE',146,NULL,NULL,NULL),(150,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ROBERT KRUPS HARTANTO',NULL,NULL,NULL,NULL,'APAL-15A01','FALSE',147,NULL,NULL,NULL),(151,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ROY YANTO STEFENUS',NULL,NULL,NULL,NULL,'APAL-15A02','FALSE',148,NULL,NULL,NULL),(152,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WINASO',NULL,NULL,NULL,NULL,'APAL-15A03','FALSE',149,NULL,NULL,NULL),(153,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LANNY YIRAWATI SITO',NULL,NULL,NULL,NULL,'APAL-15A05','FALSE',150,NULL,NULL,NULL),(154,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Ing Pu',NULL,NULL,NULL,NULL,'APAL-15A06','FALSE',151,NULL,NULL,NULL),(155,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SU HIONG',NULL,NULL,NULL,NULL,'APAL-15A07','FALSE',152,NULL,NULL,NULL),(156,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CINDY DEWI WULANDARI',NULL,NULL,NULL,NULL,'APAL-15A08','FALSE',153,NULL,NULL,NULL),(157,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDBERT NGADIRAN',NULL,NULL,NULL,NULL,'APAL-15A09','FALSE',154,NULL,NULL,NULL),(158,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IWAN ADLIM',NULL,NULL,NULL,NULL,'APAL-15A10','FALSE',155,NULL,NULL,NULL),(159,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BRAM SETIAWAN',NULL,NULL,NULL,NULL,'APAL-15A11','FALSE',156,NULL,NULL,NULL),(160,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Andy Santoso',NULL,NULL,NULL,NULL,'APAL-15A12','FALSE',157,NULL,NULL,NULL),(161,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BAYU GIRI SAPUTRA',NULL,NULL,NULL,NULL,'APAL-15A16','FALSE',158,NULL,NULL,NULL),(162,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MICHAEL WIJAYA',NULL,NULL,NULL,NULL,'APAL-16001','FALSE',159,NULL,NULL,NULL),(163,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KHO ANGELLINA',NULL,NULL,NULL,NULL,'APAL-16002','FALSE',160,NULL,NULL,NULL),(164,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJOA KHE PIN',NULL,NULL,NULL,NULL,'APAL-16003','FALSE',161,NULL,NULL,NULL),(165,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRANS LUMENDONG',NULL,NULL,NULL,NULL,'APAL-16005','FALSE',162,NULL,NULL,NULL),(166,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'GUSTAP NURSALIM',NULL,NULL,NULL,NULL,'APAL-16006','FALSE',163,NULL,NULL,NULL),(167,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SISKA',NULL,NULL,NULL,NULL,'APAL-16007','FALSE',164,NULL,NULL,NULL),(168,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TAN SOE HIAN',NULL,NULL,NULL,NULL,'APAL-16008','FALSE',165,NULL,NULL,NULL),(169,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JETTY SUTJIPTO',NULL,NULL,NULL,NULL,'APAL-16009','FALSE',166,NULL,NULL,NULL),(170,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JIMMY HARTANTO',NULL,NULL,NULL,NULL,'APAL-16010','FALSE',167,NULL,NULL,NULL),(171,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CAHYADI LUKMAN',NULL,NULL,NULL,NULL,'APAL-16011','FALSE',168,NULL,NULL,NULL),(172,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDRI SATRIYADI',NULL,NULL,NULL,NULL,'APAL-16012','FALSE',169,NULL,NULL,NULL),(173,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DESSY',NULL,NULL,NULL,NULL,'APAL-16016','FALSE',170,NULL,NULL,NULL),(174,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SESILIA',NULL,NULL,NULL,NULL,'APAL-17005','FALSE',171,NULL,NULL,NULL),(175,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FANNI',NULL,NULL,NULL,NULL,'APAL-17007','FALSE',172,NULL,NULL,NULL),(176,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENRY SANTOSA',NULL,NULL,NULL,NULL,'APAL-17008','FALSE',173,NULL,NULL,NULL),(177,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENRY SANTOSA',NULL,NULL,NULL,NULL,'APAL-17010','FALSE',174,NULL,NULL,NULL),(178,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIN KHE',NULL,NULL,NULL,NULL,'APAL-18005','FALSE',175,NULL,NULL,NULL),(179,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIN KHE',NULL,NULL,NULL,NULL,'APAL-18007','FALSE',176,NULL,NULL,NULL),(180,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIN KHE',NULL,NULL,NULL,NULL,'APAL-18008','FALSE',177,NULL,NULL,NULL),(181,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIN KHE',NULL,NULL,NULL,NULL,'APAL-18010','FALSE',178,NULL,NULL,NULL),(182,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APBO-01001','FALSE',179,NULL,NULL,NULL),(183,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FLORENCIA PURNAMA GRANI TANIDJOJO',NULL,NULL,NULL,NULL,'APBO-01002','FALSE',180,NULL,NULL,NULL),(184,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENRY JOSEPH',NULL,NULL,NULL,NULL,'APBO-01003','FALSE',181,NULL,NULL,NULL),(185,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DJUNAEDY DRAKEL',NULL,NULL,NULL,NULL,'APBO-01005','FALSE',182,NULL,NULL,NULL),(186,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JANG TJIK',NULL,NULL,NULL,NULL,'APBO-01006','FALSE',183,NULL,NULL,NULL),(187,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APBO-01007','FALSE',184,NULL,NULL,NULL),(188,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TAN SUN HIN',NULL,NULL,NULL,NULL,'APBO-01008','FALSE',185,NULL,NULL,NULL),(189,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MANSUR AKIL, MPD, DR.',NULL,NULL,NULL,NULL,'APBO-01009','FALSE',186,NULL,NULL,NULL),(190,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'I GUSTI ALIT OKA & I MADE MENDRA',NULL,NULL,NULL,NULL,'APBO-01010','FALSE',187,NULL,NULL,NULL),(191,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APBO-01011','FALSE',188,NULL,NULL,NULL),(192,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APBO-01012','FALSE',189,NULL,NULL,NULL),(193,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PT. KARYA MEGAH PERMAI (KMP)',NULL,NULL,NULL,NULL,'APBO-01016','FALSE',190,NULL,NULL,NULL),(194,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PATRICK GOENAWAN TAUHID',NULL,NULL,NULL,NULL,'APBO-02001','FALSE',191,NULL,NULL,NULL),(195,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARIES',NULL,NULL,NULL,NULL,'APBO-02002','FALSE',192,NULL,NULL,NULL),(196,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELSIE KUMALA',NULL,NULL,NULL,NULL,'APBO-02003','FALSE',193,NULL,NULL,NULL),(197,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YOSEP BUDI SETIAWAN S',NULL,NULL,NULL,NULL,'APBO-02005','FALSE',194,NULL,NULL,NULL),(198,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LISA SANTOSA TJIA',NULL,NULL,NULL,NULL,'APBO-02006','FALSE',195,NULL,NULL,NULL),(199,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDREAS YONATHAN',NULL,NULL,NULL,NULL,'APBO-02007','FALSE',196,NULL,NULL,NULL),(200,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INDRAWATI PURBOWASITO',NULL,NULL,NULL,NULL,'APBO-02008','FALSE',197,NULL,NULL,NULL),(201,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RICOH',NULL,NULL,NULL,NULL,'APBO-02009','FALSE',198,NULL,NULL,NULL),(202,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KEKE AGUSTINA',NULL,NULL,NULL,NULL,'APBO-02010','FALSE',199,NULL,NULL,NULL),(203,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERWIN JUNJUNG',NULL,NULL,NULL,NULL,'APBO-02011','FALSE',200,NULL,NULL,NULL),(204,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANTONIO IKLANATA SANTOSO',NULL,NULL,NULL,NULL,'APBO-02012','FALSE',201,NULL,NULL,NULL),(205,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FITRI NURHAYATI',NULL,NULL,NULL,NULL,'APBO-02016','FALSE',202,NULL,NULL,NULL),(206,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARITA',NULL,NULL,NULL,NULL,'APBO-03001','FALSE',203,NULL,NULL,NULL),(207,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CLARISSA ANTHONIO',NULL,NULL,NULL,NULL,'APBO-03002','FALSE',204,NULL,NULL,NULL),(208,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ONG GWEK KIAW',NULL,NULL,NULL,NULL,'APBO-03003','FALSE',205,NULL,NULL,NULL),(209,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WINTOMO TJANDRA',NULL,NULL,NULL,NULL,'APBO-03005','FALSE',206,NULL,NULL,NULL),(210,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TAN ERIK SETIAWAN',NULL,NULL,NULL,NULL,'APBO-03006','FALSE',207,NULL,NULL,NULL),(211,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Edbert Ngadiran',NULL,NULL,NULL,NULL,'APBO-03007','FALSE',208,NULL,NULL,NULL),(212,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Jennyfer Laurent',NULL,NULL,NULL,NULL,'APBO-03008','FALSE',209,NULL,NULL,NULL),(213,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IMELDA SUSILO POEI',NULL,NULL,NULL,NULL,'APBO-03009','FALSE',210,NULL,NULL,NULL),(214,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FREDERIK TANIZAR & KWEK NELLI',NULL,NULL,NULL,NULL,'APBO-03010','FALSE',211,NULL,NULL,NULL),(215,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KHO RACHEL',NULL,NULL,NULL,NULL,'APBO-03011','FALSE',212,NULL,NULL,NULL),(216,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENGKI GUNAWAN',NULL,NULL,NULL,NULL,'APBO-03012','FALSE',213,NULL,NULL,NULL),(217,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIEM BAMBANG SUGIYANTO',NULL,NULL,NULL,NULL,'APBO-03016','FALSE',214,NULL,NULL,NULL),(218,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FREDY ADRIANTO TANAMAS',NULL,NULL,NULL,NULL,'APBO-05001','FALSE',215,NULL,NULL,NULL),(219,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AGUS LAIMAN',NULL,NULL,NULL,NULL,'APBO-05002','FALSE',216,NULL,NULL,NULL),(220,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THAMRIN GUNAWAN',NULL,NULL,NULL,NULL,'APBO-05003','FALSE',217,NULL,NULL,NULL),(221,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARI MAHARANI',NULL,NULL,NULL,NULL,'APBO-05005','FALSE',218,NULL,NULL,NULL),(222,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Drs.Indra Tjahya',NULL,NULL,NULL,NULL,'APBO-05006','FALSE',219,NULL,NULL,NULL),(223,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IRAWATI DERMAWAN',NULL,NULL,NULL,NULL,'APBO-05007','FALSE',220,NULL,NULL,NULL),(224,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Herlina Tjondrosetio',NULL,NULL,NULL,NULL,'APBO-05008','FALSE',221,NULL,NULL,NULL),(225,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RITA',NULL,NULL,NULL,NULL,'APBO-05009','FALSE',222,NULL,NULL,NULL),(226,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANG SAK KHIM',NULL,NULL,NULL,NULL,'APBO-05010','FALSE',223,NULL,NULL,NULL),(227,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HOO LAN HOA',NULL,NULL,NULL,NULL,'APBO-05011','FALSE',224,NULL,NULL,NULL),(228,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SURIJADI BURHAN',NULL,NULL,NULL,NULL,'APBO-05012','FALSE',225,NULL,NULL,NULL),(229,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERLINA TANIWIDJAJA',NULL,NULL,NULL,NULL,'APBO-05016','FALSE',226,NULL,NULL,NULL),(230,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELSIE KUMALA',NULL,NULL,NULL,NULL,'APBO-06001','FALSE',227,NULL,NULL,NULL),(231,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUCIA SAPUTRA',NULL,NULL,NULL,NULL,'APBO-06002','FALSE',228,NULL,NULL,NULL),(232,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TIANAS SINAGA',NULL,NULL,NULL,NULL,'APBO-06003','FALSE',229,NULL,NULL,NULL),(233,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DARIUS SUSANTO',NULL,NULL,NULL,NULL,'APBO-06005','FALSE',230,NULL,NULL,NULL),(234,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'GOUW MIE LIEN',NULL,NULL,NULL,NULL,'APBO-06006','FALSE',231,NULL,NULL,NULL),(235,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IDA AYU OKA ASTUTI',NULL,NULL,NULL,NULL,'APBO-06007','FALSE',232,NULL,NULL,NULL),(236,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WIRRO EDDY V GUNAWAN',NULL,NULL,NULL,NULL,'APBO-06008','FALSE',233,NULL,NULL,NULL),(237,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELLEN SUSILOWATI',NULL,NULL,NULL,NULL,'APBO-06009','FALSE',234,NULL,NULL,NULL),(238,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MICHELLE LIU',NULL,NULL,NULL,NULL,'APBO-06010','FALSE',235,NULL,NULL,NULL),(239,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANTONY',NULL,NULL,NULL,NULL,'APBO-06011','FALSE',236,NULL,NULL,NULL),(240,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TUTY',NULL,NULL,NULL,NULL,'APBO-06012','FALSE',237,NULL,NULL,NULL),(241,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELLEN HALIM',NULL,NULL,NULL,NULL,'APBO-06016','FALSE',238,NULL,NULL,NULL),(242,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Lam Tjhay Jung',NULL,NULL,NULL,NULL,'APBO-07001','FALSE',239,NULL,NULL,NULL),(243,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KENDAR RAHMI MAGHFIROH',NULL,NULL,NULL,NULL,'APBO-07002','FALSE',240,NULL,NULL,NULL),(244,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CAROLINE',NULL,NULL,NULL,NULL,'APBO-07003','FALSE',241,NULL,NULL,NULL),(245,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SHINTA HENDRA F',NULL,NULL,NULL,NULL,'APBO-07005','FALSE',242,NULL,NULL,NULL),(246,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RATNA ICHWAN',NULL,NULL,NULL,NULL,'APBO-07006','FALSE',243,NULL,NULL,NULL),(247,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM SURYANTO ABEDNEGO',NULL,NULL,NULL,NULL,'APBO-07007','FALSE',244,NULL,NULL,NULL),(248,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Rosina Udaya',NULL,NULL,NULL,NULL,'APBO-07008','FALSE',245,NULL,NULL,NULL),(249,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LINDA',NULL,NULL,NULL,NULL,'APBO-07009','FALSE',246,NULL,NULL,NULL),(250,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KENNEDI',NULL,NULL,NULL,NULL,'APBO-07010','FALSE',247,NULL,NULL,NULL),(251,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LILIES PAIT',NULL,NULL,NULL,NULL,'APBO-07011','FALSE',248,NULL,NULL,NULL),(252,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ESTER',NULL,NULL,NULL,NULL,'APBO-07012','FALSE',249,NULL,NULL,NULL),(253,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALWI',NULL,NULL,NULL,NULL,'APBO-07016','FALSE',250,NULL,NULL,NULL),(254,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HELEN NOVIANA',NULL,NULL,NULL,NULL,'APBO-08001','FALSE',251,NULL,NULL,NULL),(255,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HUDI WITOPO',NULL,NULL,NULL,NULL,'APBO-08002','FALSE',252,NULL,NULL,NULL),(256,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PT.KMP',NULL,NULL,NULL,NULL,'APBO-08003','FALSE',253,NULL,NULL,NULL),(257,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJOKRO SURYA DINATA',NULL,NULL,NULL,NULL,'APBO-08005','FALSE',254,NULL,NULL,NULL),(258,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SYORS EFFENDI',NULL,NULL,NULL,NULL,'APBO-08006','FALSE',255,NULL,NULL,NULL),(259,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AMEA INTAN SWANDYAN G.',NULL,NULL,NULL,NULL,'APBO-08007','FALSE',256,NULL,NULL,NULL),(260,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NOVIANA',NULL,NULL,NULL,NULL,'APBO-08008','FALSE',257,NULL,NULL,NULL),(261,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LENI MARLINA',NULL,NULL,NULL,NULL,'APBO-08009','FALSE',258,NULL,NULL,NULL),(262,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JOHN WILSEN',NULL,NULL,NULL,NULL,'APBO-08010','FALSE',259,NULL,NULL,NULL),(263,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INE SAGITA (Sementara)',NULL,NULL,NULL,NULL,'APBO-08011','FALSE',260,NULL,NULL,NULL),(264,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDRI',NULL,NULL,NULL,NULL,'APBO-08012','FALSE',261,NULL,NULL,NULL),(265,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HUDI WITOPO',NULL,NULL,NULL,NULL,'APBO-08016','FALSE',262,NULL,NULL,NULL),(266,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DANIEL TANZIL',NULL,NULL,NULL,NULL,'APBO-09001','FALSE',263,NULL,NULL,NULL),(267,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IAN KUSWADI',NULL,NULL,NULL,NULL,'APBO-09002','FALSE',264,NULL,NULL,NULL),(268,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TAN BIE ING',NULL,NULL,NULL,NULL,'APBO-09003','FALSE',265,NULL,NULL,NULL),(269,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WIDYANA',NULL,NULL,NULL,NULL,'APBO-09005','FALSE',266,NULL,NULL,NULL),(270,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'T. CHRISTINE ANGELINA',NULL,NULL,NULL,NULL,'APBO-09006','FALSE',267,NULL,NULL,NULL),(271,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SRIWIJEYEN',NULL,NULL,NULL,NULL,'APBO-09007','FALSE',268,NULL,NULL,NULL),(272,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WENY YUHADI',NULL,NULL,NULL,NULL,'APBO-09008','FALSE',269,NULL,NULL,NULL),(273,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALFAN HUSEN',NULL,NULL,NULL,NULL,'APBO-09009','FALSE',270,NULL,NULL,NULL),(274,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUFIA BONGSO',NULL,NULL,NULL,NULL,'APBO-09010','FALSE',271,NULL,NULL,NULL),(275,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TAN GEK CIN',NULL,NULL,NULL,NULL,'APBO-09011','FALSE',272,NULL,NULL,NULL),(276,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARMAND HERLAMBANG',NULL,NULL,NULL,NULL,'APBO-09012','FALSE',273,NULL,NULL,NULL),(277,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Sutardi Djerimi',NULL,NULL,NULL,NULL,'APBO-09016','FALSE',274,NULL,NULL,NULL),(278,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Nanggala Harja',NULL,NULL,NULL,NULL,'APBO-10001','FALSE',275,NULL,NULL,NULL),(279,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HASAN BASRI',NULL,NULL,NULL,NULL,'APBO-10002','FALSE',276,NULL,NULL,NULL),(280,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LEONAR',NULL,NULL,NULL,NULL,'APBO-10003','FALSE',277,NULL,NULL,NULL),(281,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RINITA',NULL,NULL,NULL,NULL,'APBO-10005','FALSE',278,NULL,NULL,NULL),(282,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJIANG SUPARIAN',NULL,NULL,NULL,NULL,'APBO-10006','FALSE',279,NULL,NULL,NULL),(283,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BURHANTO',NULL,NULL,NULL,NULL,'APBO-10007','FALSE',280,NULL,NULL,NULL),(284,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJONG LUSIANA',NULL,NULL,NULL,NULL,'APBO-10008','FALSE',281,NULL,NULL,NULL),(285,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INDRAWAN DJAJA',NULL,NULL,NULL,NULL,'APBO-10009','FALSE',282,NULL,NULL,NULL),(286,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUNARDI, THE',NULL,NULL,NULL,NULL,'APBO-10010','FALSE',283,NULL,NULL,NULL),(287,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CHRISTINE AGUSTINA CHENG',NULL,NULL,NULL,NULL,'APBO-10011','FALSE',284,NULL,NULL,NULL),(288,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RICKY',NULL,NULL,NULL,NULL,'APBO-10012','FALSE',285,NULL,NULL,NULL),(289,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MEI JUNG SRIANA',NULL,NULL,NULL,NULL,'APBO-10016','FALSE',286,NULL,NULL,NULL),(290,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KONG WIYANTO PURWANTO',NULL,NULL,NULL,NULL,'APBO-11001','FALSE',287,NULL,NULL,NULL),(291,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERWIND ORLANDO',NULL,NULL,NULL,NULL,'APBO-11002','FALSE',288,NULL,NULL,NULL),(292,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TONY SETIAWAN (SUNARTO)',NULL,NULL,NULL,NULL,'APBO-11003','FALSE',289,NULL,NULL,NULL),(293,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JENNIFER',NULL,NULL,NULL,NULL,'APBO-11005','FALSE',290,NULL,NULL,NULL),(294,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SURYA HADISAPUTRA',NULL,NULL,NULL,NULL,'APBO-11006','FALSE',291,NULL,NULL,NULL),(295,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DR.H.Amril Machmud.SH M Kes',NULL,NULL,NULL,NULL,'APBO-11007','FALSE',292,NULL,NULL,NULL),(296,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIAUW SIAT MOY',NULL,NULL,NULL,NULL,'APBO-11008','FALSE',293,NULL,NULL,NULL),(297,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARIFIN SAHABU',NULL,NULL,NULL,NULL,'APBO-11009','FALSE',294,NULL,NULL,NULL),(298,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BO DJIT JUNG',NULL,NULL,NULL,NULL,'APBO-11010','FALSE',295,NULL,NULL,NULL),(299,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KUOK SIAN',NULL,NULL,NULL,NULL,'APBO-11011','FALSE',296,NULL,NULL,NULL),(300,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TOMY NORMAN',NULL,NULL,NULL,NULL,'APBO-11012','FALSE',297,NULL,NULL,NULL),(301,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Lie Phin Fong + Tan Danny & Tan Wiwie Herawati',NULL,NULL,NULL,NULL,'APBO-11016','FALSE',298,NULL,NULL,NULL),(302,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUHERI TERTA',NULL,NULL,NULL,NULL,'APBO-12001','FALSE',299,NULL,NULL,NULL),(303,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LITA',NULL,NULL,NULL,NULL,'APBO-12002','FALSE',300,NULL,NULL,NULL),(304,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SRI LAKSMI KARTINI , M SMHK',NULL,NULL,NULL,NULL,'APBO-12003','FALSE',301,NULL,NULL,NULL),(305,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDRY WIDJAYA',NULL,NULL,NULL,NULL,'APBO-12005','FALSE',302,NULL,NULL,NULL),(306,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THEN LI MOIJ',NULL,NULL,NULL,NULL,'APBO-12006','FALSE',303,NULL,NULL,NULL),(307,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WIRAGUNAWAN TANDYONO',NULL,NULL,NULL,NULL,'APBO-12007','FALSE',304,NULL,NULL,NULL),(308,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THE PAUW MAN',NULL,NULL,NULL,NULL,'APBO-12008','FALSE',305,NULL,NULL,NULL),(309,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BETTY',NULL,NULL,NULL,NULL,'APBO-12009','FALSE',306,NULL,NULL,NULL),(310,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FERDIE LIEMAN',NULL,NULL,NULL,NULL,'APBO-12010','FALSE',307,NULL,NULL,NULL),(311,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERPENDI',NULL,NULL,NULL,NULL,'APBO-12011','FALSE',308,NULL,NULL,NULL),(312,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PHANG TRISNA JAYA',NULL,NULL,NULL,NULL,'APBO-12012','FALSE',309,NULL,NULL,NULL),(313,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CHRISTOFORUS',NULL,NULL,NULL,NULL,'APBO-12016','FALSE',310,NULL,NULL,NULL),(314,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Liniwati Suhaimi',NULL,NULL,NULL,NULL,'APBO-15001','FALSE',311,NULL,NULL,NULL),(315,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERIK HARTONO',NULL,NULL,NULL,NULL,'APBO-15002','FALSE',312,NULL,NULL,NULL),(316,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANNY PUSPA',NULL,NULL,NULL,NULL,'APBO-15003','FALSE',313,NULL,NULL,NULL),(317,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THE MERRY SILVANA',NULL,NULL,NULL,NULL,'APBO-15005','FALSE',314,NULL,NULL,NULL),(318,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YENNY',NULL,NULL,NULL,NULL,'APBO-15006','FALSE',315,NULL,NULL,NULL),(319,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AROZAWATO ZANDROTO',NULL,NULL,NULL,NULL,'APBO-15007','FALSE',316,NULL,NULL,NULL),(320,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRA SUGAMA',NULL,NULL,NULL,NULL,'APBO-15008','FALSE',317,NULL,NULL,NULL),(321,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IRIANI GIRSANG',NULL,NULL,NULL,NULL,'APBO-15009','FALSE',318,NULL,NULL,NULL),(322,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FENNY KRISTANTI',NULL,NULL,NULL,NULL,'APBO-15010','FALSE',319,NULL,NULL,NULL),(323,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANITA SRIE RAHAYU',NULL,NULL,NULL,NULL,'APBO-15011','FALSE',320,NULL,NULL,NULL),(324,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TRIANA SUHARNA',NULL,NULL,NULL,NULL,'APBO-15012','FALSE',321,NULL,NULL,NULL),(325,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRS. FIRMAN HUTADJULU',NULL,NULL,NULL,NULL,'APBO-15016','FALSE',322,NULL,NULL,NULL),(326,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERLIN HAPENDI',NULL,NULL,NULL,NULL,'APBO-15A01','FALSE',323,NULL,NULL,NULL),(327,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PEK SANG TANWIN',NULL,NULL,NULL,NULL,'APBO-15A02','FALSE',324,NULL,NULL,NULL),(328,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SATWIKA VIVA ELKANA',NULL,NULL,NULL,NULL,'APBO-15A03','FALSE',325,NULL,NULL,NULL),(329,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ROZAMI ABDUL RAHIM',NULL,NULL,NULL,NULL,'APBO-15A05','FALSE',326,NULL,NULL,NULL),(330,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NG KUI GEK',NULL,NULL,NULL,NULL,'APBO-15A06','FALSE',327,NULL,NULL,NULL),(331,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARDIANSYAH',NULL,NULL,NULL,NULL,'APBO-15A07','FALSE',328,NULL,NULL,NULL),(332,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DEDY SELAMAT',NULL,NULL,NULL,NULL,'APBO-15A08','FALSE',329,NULL,NULL,NULL),(333,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERLINGJATI RUSTAMAN',NULL,NULL,NULL,NULL,'APBO-15A09','FALSE',330,NULL,NULL,NULL),(334,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SRI PUJIATI AGUS',NULL,NULL,NULL,NULL,'APBO-15A10','FALSE',331,NULL,NULL,NULL),(335,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AGUS SALIM',NULL,NULL,NULL,NULL,'APBO-15A11','FALSE',332,NULL,NULL,NULL),(336,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRA. ERBITA DUMADA RIANI . H',NULL,NULL,NULL,NULL,'APBO-15A12','FALSE',333,NULL,NULL,NULL),(337,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BING SISWANTO',NULL,NULL,NULL,NULL,'APBO-15A16','FALSE',334,NULL,NULL,NULL),(338,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CAI JADI',NULL,NULL,NULL,NULL,'APBO-16001','FALSE',335,NULL,NULL,NULL),(339,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IRFAN',NULL,NULL,NULL,NULL,'APBO-16002','FALSE',336,NULL,NULL,NULL),(340,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Fanny',NULL,NULL,NULL,NULL,'APBO-16003','FALSE',337,NULL,NULL,NULL),(341,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WINARDY UNTORO',NULL,NULL,NULL,NULL,'APBO-16005','FALSE',338,NULL,NULL,NULL),(342,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AMAN GODJALI',NULL,NULL,NULL,NULL,'APBO-16006','FALSE',339,NULL,NULL,NULL),(343,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENRY',NULL,NULL,NULL,NULL,'APBO-16007','FALSE',340,NULL,NULL,NULL),(344,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DANANG SUTAWIJAYA',NULL,NULL,NULL,NULL,'APBO-16008','FALSE',341,NULL,NULL,NULL),(345,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LOVIANA',NULL,NULL,NULL,NULL,'APBO-16009','FALSE',342,NULL,NULL,NULL),(346,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'POLARISIN SUDI',NULL,NULL,NULL,NULL,'APBO-16010','FALSE',343,NULL,NULL,NULL),(347,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FERDY LIANDOUW .ST',NULL,NULL,NULL,NULL,'APBO-16011','FALSE',344,NULL,NULL,NULL),(348,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PT.FUTURA INNOVE EVOLUSI',NULL,NULL,NULL,NULL,'APBO-16012','FALSE',345,NULL,NULL,NULL),(349,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IR. HENDRAWAN BUDI RAHAYU',NULL,NULL,NULL,NULL,'APBO-16016','FALSE',346,NULL,NULL,NULL),(350,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Andriyana Savitri',NULL,NULL,NULL,NULL,'APBO-17005','FALSE',347,NULL,NULL,NULL),(351,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PUTRAJAIJA',NULL,NULL,NULL,NULL,'APBO-17007','FALSE',348,NULL,NULL,NULL),(352,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANY EKA PUTRA',NULL,NULL,NULL,NULL,'APBO-17008','FALSE',349,NULL,NULL,NULL),(353,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Michael (Benyamin Lasmana)',NULL,NULL,NULL,NULL,'APBO-17010','FALSE',350,NULL,NULL,NULL),(354,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MASUR',NULL,NULL,NULL,NULL,'APBO-18005','FALSE',351,NULL,NULL,NULL),(355,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIE DIANA PUSPA',NULL,NULL,NULL,NULL,'APBO-18007','FALSE',352,NULL,NULL,NULL),(356,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JULIA GANI',NULL,NULL,NULL,NULL,'APBO-18008','FALSE',353,NULL,NULL,NULL),(357,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SISILIA PRENALY',NULL,NULL,NULL,NULL,'APBO-18010','FALSE',354,NULL,NULL,NULL),(358,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YENNY CHRISTIANA',NULL,NULL,NULL,NULL,'APMA-01001','FALSE',355,NULL,NULL,NULL),(359,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDWARD',NULL,NULL,NULL,NULL,'APMA-01002','FALSE',356,NULL,NULL,NULL),(360,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'VIELLY HENKO',NULL,NULL,NULL,NULL,'APMA-01003','FALSE',357,NULL,NULL,NULL),(361,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THEN LIE NA',NULL,NULL,NULL,NULL,'APMA-01005','FALSE',358,NULL,NULL,NULL),(362,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APMA-01008','FALSE',359,NULL,NULL,NULL),(363,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'A.A Ayu Masningsih',NULL,NULL,NULL,NULL,'APMA-01009','FALSE',360,NULL,NULL,NULL),(364,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DWI RACHMADIANTI',NULL,NULL,NULL,NULL,'APMA-01010','FALSE',361,NULL,NULL,NULL),(365,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SILVIANITA TANDEAN',NULL,NULL,NULL,NULL,'APMA-01011','FALSE',362,NULL,NULL,NULL),(366,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RINNA',NULL,NULL,NULL,NULL,'APMA-01012','FALSE',363,NULL,NULL,NULL),(367,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TEGUH MULYAWATI',NULL,NULL,NULL,NULL,'APMA-01015','FALSE',364,NULL,NULL,NULL),(368,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARTHA WIJAYA KUSUMA',NULL,NULL,NULL,NULL,'APMA-01016','FALSE',365,NULL,NULL,NULL),(369,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NENY ARTIANA',NULL,NULL,NULL,NULL,'APMA-01017','FALSE',366,NULL,NULL,NULL),(370,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JUS SURYADI',NULL,NULL,NULL,NULL,'APMA-01018','FALSE',367,NULL,NULL,NULL),(371,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APMA-01021','FALSE',368,NULL,NULL,NULL),(372,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HADI YANTO',NULL,NULL,NULL,NULL,'APMA-01023','FALSE',369,NULL,NULL,NULL),(373,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LILIS SUBROTO',NULL,NULL,NULL,NULL,'APMA-01025','FALSE',370,NULL,NULL,NULL),(374,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUHENDRA S',NULL,NULL,NULL,NULL,'APMA-01026','FALSE',371,NULL,NULL,NULL),(375,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CHANDRA GUNAWAN',NULL,NULL,NULL,NULL,'APMA-01028','FALSE',372,NULL,NULL,NULL),(376,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KIM JIN',NULL,NULL,NULL,NULL,'APMA-02001','FALSE',373,NULL,NULL,NULL),(377,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERLYNA',NULL,NULL,NULL,NULL,'APMA-02002','FALSE',374,NULL,NULL,NULL),(378,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUSI',NULL,NULL,NULL,NULL,'APMA-02003','FALSE',375,NULL,NULL,NULL),(379,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANNA ROHANA MARPAUNG',NULL,NULL,NULL,NULL,'APMA-02005','FALSE',376,NULL,NULL,NULL),(380,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KWEE TJAIJ SENG',NULL,NULL,NULL,NULL,'APMA-02006','FALSE',377,NULL,NULL,NULL),(381,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERIS ELIY',NULL,NULL,NULL,NULL,'APMA-02009','FALSE',378,NULL,NULL,NULL),(382,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PT. LION MENTARI',NULL,NULL,NULL,NULL,'APMA-02010','FALSE',379,NULL,NULL,NULL),(383,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THIO ELISYA',NULL,NULL,NULL,NULL,'APMA-02011','FALSE',380,NULL,NULL,NULL),(384,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUCIA NURLAELI SETIAWAN',NULL,NULL,NULL,NULL,'APMA-02012','FALSE',381,NULL,NULL,NULL),(385,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TIN HIDAYATI',NULL,NULL,NULL,NULL,'APMA-02015','FALSE',382,NULL,NULL,NULL),(386,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YULIA NINGSIH',NULL,NULL,NULL,NULL,'APMA-02016','FALSE',383,NULL,NULL,NULL),(387,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NURAENI AZIZ',NULL,NULL,NULL,NULL,'APMA-02017','FALSE',384,NULL,NULL,NULL),(388,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM PUTRA PRATAMA',NULL,NULL,NULL,NULL,'APMA-02018','FALSE',385,NULL,NULL,NULL),(389,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NOVITA NIRMALA MOODUTO',NULL,NULL,NULL,NULL,'APMA-02021','FALSE',386,NULL,NULL,NULL),(390,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RICKY MAYKEL',NULL,NULL,NULL,NULL,'APMA-02023','FALSE',387,NULL,NULL,NULL),(391,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DEDI HERMAWAN',NULL,NULL,NULL,NULL,'APMA-02025','FALSE',388,NULL,NULL,NULL),(392,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RAY VICTOR',NULL,NULL,NULL,NULL,'APMA-02026','FALSE',389,NULL,NULL,NULL),(393,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YULLY HERMAWAN',NULL,NULL,NULL,NULL,'APMA-02028','FALSE',390,NULL,NULL,NULL),(394,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RONNY WIJAYA & KO, CICILIANI',NULL,NULL,NULL,NULL,'APMA-03001','FALSE',391,NULL,NULL,NULL),(395,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BERNARD',NULL,NULL,NULL,NULL,'APMA-03002','FALSE',392,NULL,NULL,NULL),(396,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'POLI. NG',NULL,NULL,NULL,NULL,'APMA-03003','FALSE',393,NULL,NULL,NULL),(397,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CAROLINE CHENTIA',NULL,NULL,NULL,NULL,'APMA-03005','FALSE',394,NULL,NULL,NULL),(398,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIANNY IRAWATI',NULL,NULL,NULL,NULL,'APMA-03008','FALSE',395,NULL,NULL,NULL),(399,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERMAWATI',NULL,NULL,NULL,NULL,'APMA-03009','FALSE',396,NULL,NULL,NULL),(400,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KRIS JULIANTO WIDJAJA',NULL,NULL,NULL,NULL,'APMA-03010','FALSE',397,NULL,NULL,NULL),(401,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARIADI RUNDJOTJAHJONO',NULL,NULL,NULL,NULL,'APMA-03011','FALSE',398,NULL,NULL,NULL),(402,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NINGSIH WIDJAJA',NULL,NULL,NULL,NULL,'APMA-03012','FALSE',399,NULL,NULL,NULL),(403,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARIANA RAZALI',NULL,NULL,NULL,NULL,'APMA-03015','FALSE',400,NULL,NULL,NULL),(404,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KEN ERIC TJITRADJAJA',NULL,NULL,NULL,NULL,'APMA-03016','FALSE',401,NULL,NULL,NULL),(405,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SRI MULJATI LUKMAN & HENKY HARTOJO',NULL,NULL,NULL,NULL,'APMA-03017','FALSE',402,NULL,NULL,NULL),(406,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CHETIANA',NULL,NULL,NULL,NULL,'APMA-03018','FALSE',403,NULL,NULL,NULL),(407,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NONY DAFID',NULL,NULL,NULL,NULL,'APMA-03021','FALSE',404,NULL,NULL,NULL),(408,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JAP CHIN LIN',NULL,NULL,NULL,NULL,'APMA-03023','FALSE',405,NULL,NULL,NULL),(409,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WIDI SUJARWO',NULL,NULL,NULL,NULL,'APMA-03025','FALSE',406,NULL,NULL,NULL),(410,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KRISTIAN',NULL,NULL,NULL,NULL,'APMA-03026','FALSE',407,NULL,NULL,NULL),(411,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALDIANTA WIBISONO',NULL,NULL,NULL,NULL,'APMA-03028','FALSE',408,NULL,NULL,NULL),(412,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'William Handaya Swara',NULL,NULL,NULL,NULL,'APMA-05001','FALSE',409,NULL,NULL,NULL),(413,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Alam Witanto Tan',NULL,NULL,NULL,NULL,'APMA-05003','FALSE',410,NULL,NULL,NULL),(414,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUDI',NULL,NULL,NULL,NULL,'APMA-05005','FALSE',411,NULL,NULL,NULL),(415,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRA HADI',NULL,NULL,NULL,NULL,'APMA-05006','FALSE',412,NULL,NULL,NULL),(416,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRS. YUDI AGUSTONO',NULL,NULL,NULL,NULL,'APMA-05007','FALSE',413,NULL,NULL,NULL),(417,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JOHAN',NULL,NULL,NULL,NULL,'APMA-05008','FALSE',414,NULL,NULL,NULL),(418,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUSIATI ENGONO',NULL,NULL,NULL,NULL,'APMA-05009','FALSE',415,NULL,NULL,NULL),(419,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NIPUTU NARYASIH',NULL,NULL,NULL,NULL,'APMA-05010','FALSE',416,NULL,NULL,NULL),(420,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDY WIJAYA',NULL,NULL,NULL,NULL,'APMA-05011','FALSE',417,NULL,NULL,NULL),(421,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MILLYANA JUSSY, SH',NULL,NULL,NULL,NULL,'APMA-05012','FALSE',418,NULL,NULL,NULL),(422,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'V.ITA SILASARI',NULL,NULL,NULL,NULL,'APMA-05015','FALSE',419,NULL,NULL,NULL),(423,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LISTIN JUNITA',NULL,NULL,NULL,NULL,'APMA-05016','FALSE',420,NULL,NULL,NULL),(424,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MICHAEL SUTJIAMIDJAJA',NULL,NULL,NULL,NULL,'APMA-05018','FALSE',421,NULL,NULL,NULL),(425,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BUDI HANDOKO PUTRO, ST',NULL,NULL,NULL,NULL,'APMA-05019','FALSE',422,NULL,NULL,NULL),(426,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'M E R I',NULL,NULL,NULL,NULL,'APMA-05023','FALSE',423,NULL,NULL,NULL),(427,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RIDWAN ADYANTIO',NULL,NULL,NULL,NULL,'APMA-05025','FALSE',424,NULL,NULL,NULL),(428,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRS. JUNIUSCO CUACA, MBA',NULL,NULL,NULL,NULL,'APMA-05026','FALSE',425,NULL,NULL,NULL),(429,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIANSARI SUWANPOH & DRA MOLEK',NULL,NULL,NULL,NULL,'APMA-05028','FALSE',426,NULL,NULL,NULL),(430,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Susanti Zettl / Nathan Gustav Zettl',NULL,NULL,NULL,NULL,'APMA-06001','FALSE',427,NULL,NULL,NULL),(431,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SHIRLY MELANI JOE',NULL,NULL,NULL,NULL,'APMA-06003','FALSE',428,NULL,NULL,NULL),(432,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ZEAN PUPUT MARGA',NULL,NULL,NULL,NULL,'APMA-06005','FALSE',429,NULL,NULL,NULL),(433,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HASLIM NURSALIM',NULL,NULL,NULL,NULL,'APMA-06006','FALSE',430,NULL,NULL,NULL),(434,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HASLIM NURSALIM',NULL,NULL,NULL,NULL,'APMA-06008','FALSE',431,NULL,NULL,NULL),(435,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDI SUSANTO',NULL,NULL,NULL,NULL,'APMA-06009','FALSE',432,NULL,NULL,NULL),(436,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRIEDA MARGARETHA',NULL,NULL,NULL,NULL,'APMA-06010','FALSE',433,NULL,NULL,NULL),(437,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RATNAWATI QQ YOHANES GUNAWAN',NULL,NULL,NULL,NULL,'APMA-06011','FALSE',434,NULL,NULL,NULL),(438,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'R.EVY INDRYATI GONDOMULIO',NULL,NULL,NULL,NULL,'APMA-06012','FALSE',435,NULL,NULL,NULL),(439,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'VIVIAN SARI',NULL,NULL,NULL,NULL,'APMA-06015','FALSE',436,NULL,NULL,NULL),(440,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NINA KRISTINA',NULL,NULL,NULL,NULL,'APMA-06016','FALSE',437,NULL,NULL,NULL),(441,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BUDI GUNAWAN',NULL,NULL,NULL,NULL,'APMA-06017','FALSE',438,NULL,NULL,NULL),(442,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALI SONY',NULL,NULL,NULL,NULL,'APMA-06018','FALSE',439,NULL,NULL,NULL),(443,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUWANDI',NULL,NULL,NULL,NULL,'APMA-06021','FALSE',440,NULL,NULL,NULL),(444,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARRY PRAWIRA .L',NULL,NULL,NULL,NULL,'APMA-06023','FALSE',441,NULL,NULL,NULL),(445,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRANSISCA W (WONGSO KESUMA)',NULL,NULL,NULL,NULL,'APMA-06025','FALSE',442,NULL,NULL,NULL),(446,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUCIANY PRAYITNO',NULL,NULL,NULL,NULL,'APMA-06026','FALSE',443,NULL,NULL,NULL),(447,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DICKY PRAMONO PEH',NULL,NULL,NULL,NULL,'APMA-06028','FALSE',444,NULL,NULL,NULL),(448,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'VINNY HOSMAN',NULL,NULL,NULL,NULL,'APMA-07001','FALSE',445,NULL,NULL,NULL),(449,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Sumistar',NULL,NULL,NULL,NULL,'APMA-07002','FALSE',446,NULL,NULL,NULL),(450,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YOAN',NULL,NULL,NULL,NULL,'APMA-07003','FALSE',447,NULL,NULL,NULL),(451,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Johnny Sastra',NULL,NULL,NULL,NULL,'APMA-07005','FALSE',448,NULL,NULL,NULL),(452,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Alam Witanto Tan',NULL,NULL,NULL,NULL,'APMA-07006','FALSE',449,NULL,NULL,NULL),(453,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'dr.M Andriana',NULL,NULL,NULL,NULL,'APMA-07009','FALSE',450,NULL,NULL,NULL),(454,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'POLINDA',NULL,NULL,NULL,NULL,'APMA-07010','FALSE',451,NULL,NULL,NULL),(455,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PAULINA',NULL,NULL,NULL,NULL,'APMA-07012','FALSE',452,NULL,NULL,NULL),(456,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JENNY ARINI,SE',NULL,NULL,NULL,NULL,'APMA-07015','FALSE',453,NULL,NULL,NULL),(457,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANNEKE APRILIA',NULL,NULL,NULL,NULL,'APMA-07016','FALSE',454,NULL,NULL,NULL),(458,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUWANTO',NULL,NULL,NULL,NULL,'APMA-07017','FALSE',455,NULL,NULL,NULL),(459,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Fredy Ngunadi Lay',NULL,NULL,NULL,NULL,'APMA-07018','FALSE',456,NULL,NULL,NULL),(460,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRA SAPUTRA',NULL,NULL,NULL,NULL,'APMA-07019','FALSE',457,NULL,NULL,NULL),(461,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RITA WIDJAYA',NULL,NULL,NULL,NULL,'APMA-07020','FALSE',458,NULL,NULL,NULL),(462,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BUDIONO SUSANTO',NULL,NULL,NULL,NULL,'APMA-07021','FALSE',459,NULL,NULL,NULL),(463,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEPHANIE',NULL,NULL,NULL,NULL,'APMA-07023','FALSE',460,NULL,NULL,NULL),(464,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIEM VINCENT WIJAYA',NULL,NULL,NULL,NULL,'APMA-07025','FALSE',461,NULL,NULL,NULL),(465,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RITA WIDJAYA',NULL,NULL,NULL,NULL,'APMA-07026','FALSE',462,NULL,NULL,NULL),(466,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PEGGY',NULL,NULL,NULL,NULL,'APMA-08001','FALSE',463,NULL,NULL,NULL),(467,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUDI MEI DIANSYAH',NULL,NULL,NULL,NULL,'APMA-08002','FALSE',464,NULL,NULL,NULL),(468,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DEWI KUSUMA, KHONG',NULL,NULL,NULL,NULL,'APMA-08003','FALSE',465,NULL,NULL,NULL),(469,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INTAN RASARI RACHMAT.S',NULL,NULL,NULL,NULL,'APMA-08005','FALSE',466,NULL,NULL,NULL),(470,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Lela Efendy',NULL,NULL,NULL,NULL,'APMA-08006','FALSE',467,NULL,NULL,NULL),(471,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELIZABETH SUTIO',NULL,NULL,NULL,NULL,'APMA-08009','FALSE',468,NULL,NULL,NULL),(472,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANG SUI LIE',NULL,NULL,NULL,NULL,'APMA-08010','FALSE',469,NULL,NULL,NULL),(473,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SOFYAN',NULL,NULL,NULL,NULL,'APMA-08011','FALSE',470,NULL,NULL,NULL),(474,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THE WILLIAM',NULL,NULL,NULL,NULL,'APMA-08012','FALSE',471,NULL,NULL,NULL),(475,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALAM WITANTO TAN',NULL,NULL,NULL,NULL,'APMA-08016','FALSE',472,NULL,NULL,NULL),(476,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YUWARTI',NULL,NULL,NULL,NULL,'APMA-08017','FALSE',473,NULL,NULL,NULL),(477,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BUNJOTO ASTONO',NULL,NULL,NULL,NULL,'APMA-08018','FALSE',474,NULL,NULL,NULL),(478,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRA. SUNTARI',NULL,NULL,NULL,NULL,'APMA-08019','FALSE',475,NULL,NULL,NULL),(479,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARWIN',NULL,NULL,NULL,NULL,'APMA-08020','FALSE',476,NULL,NULL,NULL),(480,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NDARU DARSONO & PHEBE SETIAWATI',NULL,NULL,NULL,NULL,'APMA-08021','FALSE',477,NULL,NULL,NULL),(481,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INDAH HERDIANTI',NULL,NULL,NULL,NULL,'APMA-08023','FALSE',478,NULL,NULL,NULL),(482,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INTAN RASARI RACHMAT S',NULL,NULL,NULL,NULL,'APMA-08025','FALSE',479,NULL,NULL,NULL),(483,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NG SIOE KIE',NULL,NULL,NULL,NULL,'APMA-08028','FALSE',480,NULL,NULL,NULL),(484,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERNY HARTADI',NULL,NULL,NULL,NULL,'APMA-09001','FALSE',481,NULL,NULL,NULL),(485,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUSIE MASMAN',NULL,NULL,NULL,NULL,'APMA-09003','FALSE',482,NULL,NULL,NULL),(486,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MIRAH DEWI WIDJAJA',NULL,NULL,NULL,NULL,'APMA-09005','FALSE',483,NULL,NULL,NULL),(487,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JAP MEI SIN',NULL,NULL,NULL,NULL,'APMA-09006','FALSE',484,NULL,NULL,NULL),(488,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM CHING CHING',NULL,NULL,NULL,NULL,'APMA-09007','FALSE',485,NULL,NULL,NULL),(489,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YUNIWATI',NULL,NULL,NULL,NULL,'APMA-09008','FALSE',486,NULL,NULL,NULL),(490,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALOISIUS YUWONO',NULL,NULL,NULL,NULL,'APMA-09009','FALSE',487,NULL,NULL,NULL),(491,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARLITA',NULL,NULL,NULL,NULL,'APMA-09010','FALSE',488,NULL,NULL,NULL),(492,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Lini Thio',NULL,NULL,NULL,NULL,'APMA-09011','FALSE',489,NULL,NULL,NULL),(493,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'VINNA SETIAWATI',NULL,NULL,NULL,NULL,'APMA-09012','FALSE',490,NULL,NULL,NULL),(494,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDRI RATIO',NULL,NULL,NULL,NULL,'APMA-09016','FALSE',491,NULL,NULL,NULL),(495,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WILLTON WIJAYA',NULL,NULL,NULL,NULL,'APMA-09017','FALSE',492,NULL,NULL,NULL),(496,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRIKO WIJAYA',NULL,NULL,NULL,NULL,'APMA-09018','FALSE',493,NULL,NULL,NULL),(497,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DONNY TJAHYADIKARTA',NULL,NULL,NULL,NULL,'APMA-09021','FALSE',494,NULL,NULL,NULL),(498,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SERLYANTI',NULL,NULL,NULL,NULL,'APMA-09023','FALSE',495,NULL,NULL,NULL),(499,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Kun Sanusi',NULL,NULL,NULL,NULL,'APMA-09025','FALSE',496,NULL,NULL,NULL),(500,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DARMAWAN WIJAYA',NULL,NULL,NULL,NULL,'APMA-09026','FALSE',497,NULL,NULL,NULL),(501,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERRY',NULL,NULL,NULL,NULL,'APMA-09028','FALSE',498,NULL,NULL,NULL),(502,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HANSEN',NULL,NULL,NULL,NULL,'APMA-10001','FALSE',499,NULL,NULL,NULL),(503,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KARINA WIJAYA',NULL,NULL,NULL,NULL,'APMA-10002','FALSE',500,NULL,NULL,NULL),(504,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WENNY ROSSENO',NULL,NULL,NULL,NULL,'APMA-10003','FALSE',501,NULL,NULL,NULL),(505,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KURNIAWATY',NULL,NULL,NULL,NULL,'APMA-10005','FALSE',502,NULL,NULL,NULL),(506,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KARINA WIJAYA',NULL,NULL,NULL,NULL,'APMA-10006','FALSE',503,NULL,NULL,NULL),(507,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ENDANG PALUPI SUNDARI',NULL,NULL,NULL,NULL,'APMA-10009','FALSE',504,NULL,NULL,NULL),(508,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BUNTAMIN WIRIA',NULL,NULL,NULL,NULL,'APMA-10010','FALSE',505,NULL,NULL,NULL),(509,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WILLIAM TANDEAN',NULL,NULL,NULL,NULL,'APMA-10012','FALSE',506,NULL,NULL,NULL),(510,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRANSISCA',NULL,NULL,NULL,NULL,'APMA-10015','FALSE',507,NULL,NULL,NULL),(511,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DARMA PUTRA HASAN',NULL,NULL,NULL,NULL,'APMA-10016','FALSE',508,NULL,NULL,NULL),(512,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FELICIA OCTAVIUS',NULL,NULL,NULL,NULL,'APMA-10017','FALSE',509,NULL,NULL,NULL),(513,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IR. JUNITA GANI',NULL,NULL,NULL,NULL,'APMA-10018','FALSE',510,NULL,NULL,NULL),(514,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JETTY',NULL,NULL,NULL,NULL,'APMA-10019','FALSE',511,NULL,NULL,NULL),(515,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DEVI FEBRIANE P,S.SOS',NULL,NULL,NULL,NULL,'APMA-10021','FALSE',512,NULL,NULL,NULL),(516,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KOLANNYROS',NULL,NULL,NULL,NULL,'APMA-10023','FALSE',513,NULL,NULL,NULL),(517,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERLINA SUNAN',NULL,NULL,NULL,NULL,'APMA-10025','FALSE',514,NULL,NULL,NULL),(518,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NOVYANDI',NULL,NULL,NULL,NULL,'APMA-10026','FALSE',515,NULL,NULL,NULL),(519,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUYANTOR',NULL,NULL,NULL,NULL,'APMA-10028','FALSE',516,NULL,NULL,NULL),(520,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HANDI WILAYSONO',NULL,NULL,NULL,NULL,'APMA-11001','FALSE',517,NULL,NULL,NULL),(521,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TONY',NULL,NULL,NULL,NULL,'APMA-11002','FALSE',518,NULL,NULL,NULL),(522,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JULYANTI KUSUMA',NULL,NULL,NULL,NULL,'APMA-11003','FALSE',519,NULL,NULL,NULL),(523,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LILIANI RAHADJO',NULL,NULL,NULL,NULL,'APMA-11005','FALSE',520,NULL,NULL,NULL),(524,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JAP MEI SIN',NULL,NULL,NULL,NULL,'APMA-11006','FALSE',521,NULL,NULL,NULL),(525,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDWARD HAKIM',NULL,NULL,NULL,NULL,'APMA-11009','FALSE',522,NULL,NULL,NULL),(526,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DIAH ASTAMEINI IRAWAN',NULL,NULL,NULL,NULL,'APMA-11010','FALSE',523,NULL,NULL,NULL),(527,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RIZAL ZUCHRI',NULL,NULL,NULL,NULL,'APMA-11011','FALSE',524,NULL,NULL,NULL),(528,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEVEN ANDRIANTA',NULL,NULL,NULL,NULL,'APMA-11012','FALSE',525,NULL,NULL,NULL),(529,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'GRACE NATALIA',NULL,NULL,NULL,NULL,'APMA-11015','FALSE',526,NULL,NULL,NULL),(530,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJIU MIE SONG',NULL,NULL,NULL,NULL,'APMA-11016','FALSE',527,NULL,NULL,NULL),(531,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SOEHARDI SOESILO',NULL,NULL,NULL,NULL,'APMA-11017','FALSE',528,NULL,NULL,NULL),(532,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJIU MIE SONG',NULL,NULL,NULL,NULL,'APMA-11018','FALSE',529,NULL,NULL,NULL),(533,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIDYA NATALIA',NULL,NULL,NULL,NULL,'APMA-11020','FALSE',530,NULL,NULL,NULL),(534,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THOMAS ALPA EDISON',NULL,NULL,NULL,NULL,'APMA-11021','FALSE',531,NULL,NULL,NULL),(535,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARMYLIA MARCHELIEN',NULL,NULL,NULL,NULL,'APMA-11023','FALSE',532,NULL,NULL,NULL),(536,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DJUMAIN HARTONO',NULL,NULL,NULL,NULL,'APMA-11025','FALSE',533,NULL,NULL,NULL),(537,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NG TJOEN TJIEK',NULL,NULL,NULL,NULL,'APMA-11026','FALSE',534,NULL,NULL,NULL),(538,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YENTI',NULL,NULL,NULL,NULL,'APMA-12001','FALSE',535,NULL,NULL,NULL),(539,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LILY SETIAWAN SIAU',NULL,NULL,NULL,NULL,'APMA-12002','FALSE',536,NULL,NULL,NULL),(540,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ENDY THOMAS',NULL,NULL,NULL,NULL,'APMA-12003','FALSE',537,NULL,NULL,NULL),(541,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Made Bambang Rijanto',NULL,NULL,NULL,NULL,'APMA-12005','FALSE',538,NULL,NULL,NULL),(542,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIAU NIKEN WULANDARI',NULL,NULL,NULL,NULL,'APMA-12006','FALSE',539,NULL,NULL,NULL),(543,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INDRIYANI HASNI',NULL,NULL,NULL,NULL,'APMA-12009','FALSE',540,NULL,NULL,NULL),(544,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THERESIA',NULL,NULL,NULL,NULL,'APMA-12010','FALSE',541,NULL,NULL,NULL),(545,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENGKY OEY & JENNY CHANDRA',NULL,NULL,NULL,NULL,'APMA-12011','FALSE',542,NULL,NULL,NULL),(546,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TANG YUNUS TANAGA',NULL,NULL,NULL,NULL,'APMA-12012','FALSE',543,NULL,NULL,NULL),(547,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SIE AI PING',NULL,NULL,NULL,NULL,'APMA-12015','FALSE',544,NULL,NULL,NULL),(548,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Teh Joe Meng',NULL,NULL,NULL,NULL,'APMA-12016','FALSE',545,NULL,NULL,NULL),(549,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIANA',NULL,NULL,NULL,NULL,'APMA-12017','FALSE',546,NULL,NULL,NULL),(550,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BOE MIMI TJONG',NULL,NULL,NULL,NULL,'APMA-12018','FALSE',547,NULL,NULL,NULL),(551,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JULIA JOHAN',NULL,NULL,NULL,NULL,'APMA-12020','FALSE',548,NULL,NULL,NULL),(552,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RIANA CENDANA',NULL,NULL,NULL,NULL,'APMA-12021','FALSE',549,NULL,NULL,NULL),(553,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MERY TAN',NULL,NULL,NULL,NULL,'APMA-12023','FALSE',550,NULL,NULL,NULL),(554,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TAN GIM TJUAN',NULL,NULL,NULL,NULL,'APMA-12025','FALSE',551,NULL,NULL,NULL),(555,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SURYA NAWI',NULL,NULL,NULL,NULL,'APMA-12028','FALSE',552,NULL,NULL,NULL),(556,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RIDA SAPUTRA WIDJAJA',NULL,NULL,NULL,NULL,'APMA-15001','FALSE',553,NULL,NULL,NULL),(557,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUMARDI',NULL,NULL,NULL,NULL,'APMA-15003','FALSE',554,NULL,NULL,NULL),(558,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WILLIAM',NULL,NULL,NULL,NULL,'APMA-15005','FALSE',555,NULL,NULL,NULL),(559,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LEONARDO GANI',NULL,NULL,NULL,NULL,'APMA-15006','FALSE',556,NULL,NULL,NULL),(560,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AILY',NULL,NULL,NULL,NULL,'APMA-15008','FALSE',557,NULL,NULL,NULL),(561,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HALIL',NULL,NULL,NULL,NULL,'APMA-15009','FALSE',558,NULL,NULL,NULL),(562,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YULI KEMALA',NULL,NULL,NULL,NULL,'APMA-15010','FALSE',559,NULL,NULL,NULL),(563,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Jochebeth Cendanawangi',NULL,NULL,NULL,NULL,'APMA-15011','FALSE',560,NULL,NULL,NULL),(564,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANTHONY ANGSANA',NULL,NULL,NULL,NULL,'APMA-15012','FALSE',561,NULL,NULL,NULL),(565,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MULIANI WIDJAJA',NULL,NULL,NULL,NULL,'APMA-15015','FALSE',562,NULL,NULL,NULL),(566,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NATALIA DJUMHARI',NULL,NULL,NULL,NULL,'APMA-15016','FALSE',563,NULL,NULL,NULL),(567,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Tatang Surja',NULL,NULL,NULL,NULL,'APMA-15017','FALSE',564,NULL,NULL,NULL),(568,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JOHAN ARIPIN',NULL,NULL,NULL,NULL,'APMA-15018','FALSE',565,NULL,NULL,NULL),(569,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUNDARI RUSLI',NULL,NULL,NULL,NULL,'APMA-15021','FALSE',566,NULL,NULL,NULL),(570,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TOMMY SUTANTO',NULL,NULL,NULL,NULL,'APMA-15023','FALSE',567,NULL,NULL,NULL),(571,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MULYONO LIM, MBA.',NULL,NULL,NULL,NULL,'APMA-15025','FALSE',568,NULL,NULL,NULL),(572,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AIRIN TANIA',NULL,NULL,NULL,NULL,'APMA-15026','FALSE',569,NULL,NULL,NULL),(573,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUKMAN',NULL,NULL,NULL,NULL,'APMA-15028','FALSE',570,NULL,NULL,NULL),(574,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANTI',NULL,NULL,NULL,NULL,'APMA-15A01','FALSE',571,NULL,NULL,NULL),(575,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DJUNAIDI KOZALY',NULL,NULL,NULL,NULL,'APMA-15A03','FALSE',572,NULL,NULL,NULL),(576,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EDDY GUNAWAN',NULL,NULL,NULL,NULL,'APMA-15A05','FALSE',573,NULL,NULL,NULL),(577,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IRWAN WIDJAJA',NULL,NULL,NULL,NULL,'APMA-15A06','FALSE',574,NULL,NULL,NULL),(578,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DR. ISTIANINGSIH.SE.MS.AK',NULL,NULL,NULL,NULL,'APMA-15A08','FALSE',575,NULL,NULL,NULL),(579,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENNY TANNADY TAN',NULL,NULL,NULL,NULL,'APMA-15A09','FALSE',576,NULL,NULL,NULL),(580,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SU TJIN JAP',NULL,NULL,NULL,NULL,'APMA-15A10','FALSE',577,NULL,NULL,NULL),(581,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MAGGIE SURANTO',NULL,NULL,NULL,NULL,'APMA-15A11','FALSE',578,NULL,NULL,NULL),(582,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Marcus Hendra Gunawan',NULL,NULL,NULL,NULL,'APMA-15A12','FALSE',579,NULL,NULL,NULL),(583,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PT.NET MEDIATAMA TELEVISI',NULL,NULL,NULL,NULL,'APMA-15A15','FALSE',580,NULL,NULL,NULL),(584,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUCIANA OESLAN',NULL,NULL,NULL,NULL,'APMA-15A16','FALSE',581,NULL,NULL,NULL),(585,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PT.NET MEDIATAMA TELEVISI',NULL,NULL,NULL,NULL,'APMA-15A17','FALSE',582,NULL,NULL,NULL),(586,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'UNARITA SALIM',NULL,NULL,NULL,NULL,'APMA-15A18','FALSE',583,NULL,NULL,NULL),(587,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DR.ACHMAD DJAENUDIN',NULL,NULL,NULL,NULL,'APMA-15A21','FALSE',584,NULL,NULL,NULL),(588,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TEK SENG SUSANTO',NULL,NULL,NULL,NULL,'APMA-15A23','FALSE',585,NULL,NULL,NULL),(589,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KARTINI',NULL,NULL,NULL,NULL,'APMA-15A25','FALSE',586,NULL,NULL,NULL),(590,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HO JUN LOI',NULL,NULL,NULL,NULL,'APMA-15A26','FALSE',587,NULL,NULL,NULL),(591,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDRI',NULL,NULL,NULL,NULL,'APMA-15A28','FALSE',588,NULL,NULL,NULL),(592,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NIO ANDY',NULL,NULL,NULL,NULL,'APMA-16001','FALSE',589,NULL,NULL,NULL),(593,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJIA KIUK JIN',NULL,NULL,NULL,NULL,'APMA-16002','FALSE',590,NULL,NULL,NULL),(594,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM SUGIHANTO',NULL,NULL,NULL,NULL,'APMA-16005','FALSE',591,NULL,NULL,NULL),(595,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJOA JOHAN SUWITO',NULL,NULL,NULL,NULL,'APMA-16006','FALSE',592,NULL,NULL,NULL),(596,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANTON WIJAYA',NULL,NULL,NULL,NULL,'APMA-16007','FALSE',593,NULL,NULL,NULL),(597,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDREAS',NULL,NULL,NULL,NULL,'APMA-16009','FALSE',594,NULL,NULL,NULL),(598,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KANG CHOK HUI',NULL,NULL,NULL,NULL,'APMA-16010','FALSE',595,NULL,NULL,NULL),(599,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RAYMOND HERMAN',NULL,NULL,NULL,NULL,'APMA-16011','FALSE',596,NULL,NULL,NULL),(600,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MUKNI ROHANI',NULL,NULL,NULL,NULL,'APMA-16012','FALSE',597,NULL,NULL,NULL),(601,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LINA YUNIATI',NULL,NULL,NULL,NULL,'APMA-16015','FALSE',598,NULL,NULL,NULL),(602,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YOSEPH',NULL,NULL,NULL,NULL,'APMA-16016','FALSE',599,NULL,NULL,NULL),(603,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Rudy Sutarjono',NULL,NULL,NULL,NULL,'APMA-16018','FALSE',600,NULL,NULL,NULL),(604,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Rudy Sutarjono',NULL,NULL,NULL,NULL,'APMA-16018','FALSE',601,NULL,NULL,NULL),(605,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'S. MICHAEL SHYAN ZIMBALIST',NULL,NULL,NULL,NULL,'APMA-16019','FALSE',602,NULL,NULL,NULL),(606,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJOA LIE GHE',NULL,NULL,NULL,NULL,'APMA-16021','FALSE',603,NULL,NULL,NULL),(607,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YULITA',NULL,NULL,NULL,NULL,'APMA-16023','FALSE',604,NULL,NULL,NULL),(608,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PT GLOBAL RICH MARVELLOUS MINERAL RESOURCES',NULL,NULL,NULL,NULL,'APMA-16025','FALSE',605,NULL,NULL,NULL),(609,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'GOUW MYRNA',NULL,NULL,NULL,NULL,'APMA-16026','FALSE',606,NULL,NULL,NULL),(610,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUSTAN EFFENDY',NULL,NULL,NULL,NULL,'APMA-16028','FALSE',607,NULL,NULL,NULL),(611,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANTO',NULL,NULL,NULL,NULL,'APMA-17007','FALSE',608,NULL,NULL,NULL),(612,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JOHNY',NULL,NULL,NULL,NULL,'APMA-17009','FALSE',609,NULL,NULL,NULL),(613,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NA DE TIN',NULL,NULL,NULL,NULL,'APMA-17010','FALSE',610,NULL,NULL,NULL),(614,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THERESIA WALIYEM',NULL,NULL,NULL,NULL,'APMA-17011','FALSE',611,NULL,NULL,NULL),(615,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WATINI',NULL,NULL,NULL,NULL,'APMA-17012','FALSE',612,NULL,NULL,NULL),(616,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUTAN SOADUAN',NULL,NULL,NULL,NULL,'APMA-17015','FALSE',613,NULL,NULL,NULL),(617,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDREAS ADI WIBOWO',NULL,NULL,NULL,NULL,'APMA-17016','FALSE',614,NULL,NULL,NULL),(618,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ASWAN TJENDERA',NULL,NULL,NULL,NULL,'APMA-17017','FALSE',615,NULL,NULL,NULL),(619,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Phelia Ernestine',NULL,NULL,NULL,NULL,'APMA-17018','FALSE',616,NULL,NULL,NULL),(620,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJHIN ADRIAN PRAMANA',NULL,NULL,NULL,NULL,'APMA-17019','FALSE',617,NULL,NULL,NULL),(621,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARRY SURANTO',NULL,NULL,NULL,NULL,'APMA-18007','FALSE',618,NULL,NULL,NULL),(622,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENNY MARIA',NULL,NULL,NULL,NULL,'APMA-18009','FALSE',619,NULL,NULL,NULL),(623,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SARYONO',NULL,NULL,NULL,NULL,'APMA-18010','FALSE',620,NULL,NULL,NULL),(624,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JIMMY PONSA',NULL,NULL,NULL,NULL,'APMA-18011','FALSE',621,NULL,NULL,NULL),(625,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRANSISCA NURDIANSYAH TM',NULL,NULL,NULL,NULL,'APMA-18015','FALSE',622,NULL,NULL,NULL),(626,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUPRIYADI SUTANTO PERIDI',NULL,NULL,NULL,NULL,'APMA-18016','FALSE',623,NULL,NULL,NULL),(627,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRANSISCA NURDIANSYAH TM',NULL,NULL,NULL,NULL,'APMA-18017','FALSE',624,NULL,NULL,NULL),(628,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JOHNY TRISNO',NULL,NULL,NULL,NULL,'APMA-18018','FALSE',625,NULL,NULL,NULL),(629,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SYANTI',NULL,NULL,NULL,NULL,'APMA-18019','FALSE',626,NULL,NULL,NULL),(630,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DINCE HUTAGALUNG',NULL,NULL,NULL,NULL,'APOR-01001','FALSE',627,NULL,NULL,NULL),(631,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KUSWANDI SUBARKO',NULL,NULL,NULL,NULL,'APOR-01002','FALSE',628,NULL,NULL,NULL),(632,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SURIANI',NULL,NULL,NULL,NULL,'APOR-01003','FALSE',629,NULL,NULL,NULL),(633,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TRISNAWATI',NULL,NULL,NULL,NULL,'APOR-01005','FALSE',630,NULL,NULL,NULL),(634,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NG MIN TJHAI',NULL,NULL,NULL,NULL,'APOR-01006','FALSE',631,NULL,NULL,NULL),(635,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JHONI',NULL,NULL,NULL,NULL,'APOR-01007','FALSE',632,NULL,NULL,NULL),(636,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TRISNAWATI',NULL,NULL,NULL,NULL,'APOR-01008','FALSE',633,NULL,NULL,NULL),(637,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TRISNAWATI',NULL,NULL,NULL,NULL,'APOR-01009','FALSE',634,NULL,NULL,NULL),(638,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARIANI',NULL,NULL,NULL,NULL,'APOR-01010','FALSE',635,NULL,NULL,NULL),(639,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TRISNAWATI',NULL,NULL,NULL,NULL,'APOR-01011','FALSE',636,NULL,NULL,NULL),(640,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LOGIMIN',NULL,NULL,NULL,NULL,'APOR-01012','FALSE',637,NULL,NULL,NULL),(641,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WIYANTI TIANG',NULL,NULL,NULL,NULL,'APOR-01015','FALSE',638,NULL,NULL,NULL),(642,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TRISNAWATI SULISTIO',NULL,NULL,NULL,NULL,'APOR-01016','FALSE',639,NULL,NULL,NULL),(643,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TRISNAWATI',NULL,NULL,NULL,NULL,'APOR-01017','FALSE',640,NULL,NULL,NULL),(644,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERAWADY',NULL,NULL,NULL,NULL,'APOR-01018','FALSE',641,NULL,NULL,NULL),(645,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUSTAM EFFENDY',NULL,NULL,NULL,NULL,'APOR-01019','FALSE',642,NULL,NULL,NULL),(646,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JAMIN SALIM',NULL,NULL,NULL,NULL,'APOR-01020','FALSE',643,NULL,NULL,NULL),(647,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUGALA',NULL,NULL,NULL,NULL,'APOR-01021','FALSE',644,NULL,NULL,NULL),(648,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DEDDY S, SE',NULL,NULL,NULL,NULL,'APOR-02001','FALSE',645,NULL,NULL,NULL),(649,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THRESIA SUSANTI',NULL,NULL,NULL,NULL,'APOR-02002','FALSE',646,NULL,NULL,NULL),(650,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANISULLAH',NULL,NULL,NULL,NULL,'APOR-02003','FALSE',647,NULL,NULL,NULL),(651,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THOMMY MANDAGIE',NULL,NULL,NULL,NULL,'APOR-02005','FALSE',648,NULL,NULL,NULL),(652,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDI HANDY SAPUTRA',NULL,NULL,NULL,NULL,'APOR-02006','FALSE',649,NULL,NULL,NULL),(653,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUKKY SEMEN, SE',NULL,NULL,NULL,NULL,'APOR-02007','FALSE',650,NULL,NULL,NULL),(654,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JULIANTO',NULL,NULL,NULL,NULL,'APOR-02008','FALSE',651,NULL,NULL,NULL),(655,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ZULPAN SIREGAR.AMK.A (ERYTHRINA)',NULL,NULL,NULL,NULL,'APOR-02009','FALSE',652,NULL,NULL,NULL),(656,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PRISILIA & EVI UNTORO',NULL,NULL,NULL,NULL,'APOR-02010','FALSE',653,NULL,NULL,NULL),(657,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CH.ELIZABETH THENU',NULL,NULL,NULL,NULL,'APOR-02011','FALSE',654,NULL,NULL,NULL),(658,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DJUNI CHANDRA',NULL,NULL,NULL,NULL,'APOR-02012','FALSE',655,NULL,NULL,NULL),(659,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IR.WENNY ASTUTI',NULL,NULL,NULL,NULL,'APOR-02015','FALSE',656,NULL,NULL,NULL),(660,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YOHANES JUSUF',NULL,NULL,NULL,NULL,'APOR-02016','FALSE',657,NULL,NULL,NULL),(661,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MELFANAH',NULL,NULL,NULL,NULL,'APOR-02017','FALSE',658,NULL,NULL,NULL),(662,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUDY',NULL,NULL,NULL,NULL,'APOR-02018','FALSE',659,NULL,NULL,NULL),(663,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Tono',NULL,NULL,NULL,NULL,'APOR-02019','FALSE',660,NULL,NULL,NULL),(664,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THE GWAT TJOE,S.TH',NULL,NULL,NULL,NULL,'APOR-02021','FALSE',661,NULL,NULL,NULL),(665,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NONY DAFID',NULL,NULL,NULL,NULL,'APOR-03001','FALSE',662,NULL,NULL,NULL),(666,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIEM SIOE HWA',NULL,NULL,NULL,NULL,'APOR-03002','FALSE',663,NULL,NULL,NULL),(667,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YULIA CHANDRA',NULL,NULL,NULL,NULL,'APOR-03003','FALSE',664,NULL,NULL,NULL),(668,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENGKY CANAKA',NULL,NULL,NULL,NULL,'APOR-03005','FALSE',665,NULL,NULL,NULL),(669,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CHIU IE',NULL,NULL,NULL,NULL,'APOR-03006','FALSE',666,NULL,NULL,NULL),(670,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FENY',NULL,NULL,NULL,NULL,'APOR-03007','FALSE',667,NULL,NULL,NULL),(671,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MELIANA',NULL,NULL,NULL,NULL,'APOR-03008','FALSE',668,NULL,NULL,NULL),(672,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUHENDRI',NULL,NULL,NULL,NULL,'APOR-03009','FALSE',669,NULL,NULL,NULL),(673,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KENCONO WIBOWO',NULL,NULL,NULL,NULL,'APOR-03010','FALSE',670,NULL,NULL,NULL),(674,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJAN ALBERT RIADY',NULL,NULL,NULL,NULL,'APOR-03011','FALSE',671,NULL,NULL,NULL),(675,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENKY HADISANTOSO',NULL,NULL,NULL,NULL,'APOR-03012','FALSE',672,NULL,NULL,NULL),(676,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Ir.Lillyana Dewi MT',NULL,NULL,NULL,NULL,'APOR-03015','FALSE',673,NULL,NULL,NULL),(677,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RONNY GUNAWAN',NULL,NULL,NULL,NULL,'APOR-03016','FALSE',674,NULL,NULL,NULL),(678,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MULYANY',NULL,NULL,NULL,NULL,'APOR-03017','FALSE',675,NULL,NULL,NULL),(679,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SARINAH',NULL,NULL,NULL,NULL,'APOR-03018','FALSE',676,NULL,NULL,NULL),(680,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MAHAJATI',NULL,NULL,NULL,NULL,'APOR-03019','FALSE',677,NULL,NULL,NULL),(681,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INDRAWATI',NULL,NULL,NULL,NULL,'APOR-03020','FALSE',678,NULL,NULL,NULL),(682,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INNEKE TANDIARY',NULL,NULL,NULL,NULL,'APOR-03021','FALSE',679,NULL,NULL,NULL),(683,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'INDRIYATI WIDJASENA',NULL,NULL,NULL,NULL,'APOR-05001','FALSE',680,NULL,NULL,NULL),(684,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WIDODO',NULL,NULL,NULL,NULL,'APOR-05002','FALSE',681,NULL,NULL,NULL),(685,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IR.SONI WIJAYA',NULL,NULL,NULL,NULL,'APOR-05003','FALSE',682,NULL,NULL,NULL),(686,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ADRIAN ABRAM KARAUWAN',NULL,NULL,NULL,NULL,'APOR-05005','FALSE',683,NULL,NULL,NULL),(687,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRA',NULL,NULL,NULL,NULL,'APOR-05006','FALSE',684,NULL,NULL,NULL),(688,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LISA ARIJANTI HALIM',NULL,NULL,NULL,NULL,'APOR-05007','FALSE',685,NULL,NULL,NULL),(689,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Isbudi Santoso qq Puspa adinda damayanti',NULL,NULL,NULL,NULL,'APOR-05008','FALSE',686,NULL,NULL,NULL),(690,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Berry Tanudin',NULL,NULL,NULL,NULL,'APOR-05009','FALSE',687,NULL,NULL,NULL),(691,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MERRY (IMA)',NULL,NULL,NULL,NULL,'APOR-05010','FALSE',688,NULL,NULL,NULL),(692,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YENI HASTUTI',NULL,NULL,NULL,NULL,'APOR-05011','FALSE',689,NULL,NULL,NULL),(693,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FERA MARIANA',NULL,NULL,NULL,NULL,'APOR-05012','FALSE',690,NULL,NULL,NULL),(694,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KEVIN ARMANDO GUNAWAN',NULL,NULL,NULL,NULL,'APOR-05015','FALSE',691,NULL,NULL,NULL),(695,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BONG ELNY',NULL,NULL,NULL,NULL,'APOR-05016','FALSE',692,NULL,NULL,NULL),(696,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PATRIA WARDANA YUSWAR',NULL,NULL,NULL,NULL,'APOR-05017','FALSE',693,NULL,NULL,NULL),(697,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'OKI WIBOWO GHANIE',NULL,NULL,NULL,NULL,'APOR-05018','FALSE',694,NULL,NULL,NULL),(698,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TEDDY SUATANA',NULL,NULL,NULL,NULL,'APOR-05019','FALSE',695,NULL,NULL,NULL),(699,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ENDRIAS SINULINGGA',NULL,NULL,NULL,NULL,'APOR-05020','FALSE',696,NULL,NULL,NULL),(700,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRS. YUDI AGUSTONO',NULL,NULL,NULL,NULL,'APOR-05021','FALSE',697,NULL,NULL,NULL),(701,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENGKI SANTOSO',NULL,NULL,NULL,NULL,'APOR-06001','FALSE',698,NULL,NULL,NULL),(702,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TONY',NULL,NULL,NULL,NULL,'APOR-06002','FALSE',699,NULL,NULL,NULL),(703,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERAWATI ABDULLAH',NULL,NULL,NULL,NULL,'APOR-06003','FALSE',700,NULL,NULL,NULL),(704,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUSANTJE JHOAN WAGIU',NULL,NULL,NULL,NULL,'APOR-06005','FALSE',701,NULL,NULL,NULL),(705,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KAMILIA',NULL,NULL,NULL,NULL,'APOR-06006','FALSE',702,NULL,NULL,NULL),(706,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Kim Huat',NULL,NULL,NULL,NULL,'APOR-06007','FALSE',703,NULL,NULL,NULL),(707,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRANCISCUS XAVERIUS FERDINAN',NULL,NULL,NULL,NULL,'APOR-06008','FALSE',704,NULL,NULL,NULL),(708,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANTI',NULL,NULL,NULL,NULL,'APOR-06009','FALSE',705,NULL,NULL,NULL),(709,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Santi',NULL,NULL,NULL,NULL,'APOR-06010','FALSE',706,NULL,NULL,NULL),(710,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANTI',NULL,NULL,NULL,NULL,'APOR-06011','FALSE',707,NULL,NULL,NULL),(711,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YENNI SUNJAYA',NULL,NULL,NULL,NULL,'APOR-06012','FALSE',708,NULL,NULL,NULL),(712,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANTI',NULL,NULL,NULL,NULL,'APOR-06015','FALSE',709,NULL,NULL,NULL),(713,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NG KIAN SIANG',NULL,NULL,NULL,NULL,'APOR-06016','FALSE',710,NULL,NULL,NULL),(714,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TERRY SUHARDJO',NULL,NULL,NULL,NULL,'APOR-06017','FALSE',711,NULL,NULL,NULL),(715,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIANA DEWI',NULL,NULL,NULL,NULL,'APOR-06018','FALSE',712,NULL,NULL,NULL),(716,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TERRY SUHARDJO',NULL,NULL,NULL,NULL,'APOR-06019','FALSE',713,NULL,NULL,NULL),(717,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALAM WITANTO TAN',NULL,NULL,NULL,NULL,'APOR-06020','FALSE',714,NULL,NULL,NULL),(718,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUSANTI TANUSDJAJA',NULL,NULL,NULL,NULL,'APOR-06021','FALSE',715,NULL,NULL,NULL),(719,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PILIPI NOVI CHANDRA',NULL,NULL,NULL,NULL,'APOR-07001','FALSE',716,NULL,NULL,NULL),(720,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJONG TJUK FA',NULL,NULL,NULL,NULL,'APOR-07002','FALSE',717,NULL,NULL,NULL),(721,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRA',NULL,NULL,NULL,NULL,'APOR-07003','FALSE',718,NULL,NULL,NULL),(722,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARDLY',NULL,NULL,NULL,NULL,'APOR-07005','FALSE',719,NULL,NULL,NULL),(723,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELVIE PANGDWINATA',NULL,NULL,NULL,NULL,'APOR-07006','FALSE',720,NULL,NULL,NULL),(724,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARIA CLARA NOVITA',NULL,NULL,NULL,NULL,'APOR-07007','FALSE',721,NULL,NULL,NULL),(725,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'H. SETYADJI SE',NULL,NULL,NULL,NULL,'APOR-07008','FALSE',722,NULL,NULL,NULL),(726,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MINGKI',NULL,NULL,NULL,NULL,'APOR-07009','FALSE',723,NULL,NULL,NULL),(727,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SALMIAH',NULL,NULL,NULL,NULL,'APOR-07010','FALSE',724,NULL,NULL,NULL),(728,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'H.PANGONAL HARAHAP',NULL,NULL,NULL,NULL,'APOR-07011','FALSE',725,NULL,NULL,NULL),(729,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DHARMAWAN PUTRA SANJAYA',NULL,NULL,NULL,NULL,'APOR-07012','FALSE',726,NULL,NULL,NULL),(730,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JAINUDDIN',NULL,NULL,NULL,NULL,'APOR-07015','FALSE',727,NULL,NULL,NULL),(731,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'WILLTON WIJAYA',NULL,NULL,NULL,NULL,'APOR-07016','FALSE',728,NULL,NULL,NULL),(732,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Toni Teguh',NULL,NULL,NULL,NULL,'APOR-07017','FALSE',729,NULL,NULL,NULL),(733,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'D. KEN SAVITRI',NULL,NULL,NULL,NULL,'APOR-07018','FALSE',730,NULL,NULL,NULL),(734,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LINDA',NULL,NULL,NULL,NULL,'APOR-07019','FALSE',731,NULL,NULL,NULL),(735,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ARIPIN',NULL,NULL,NULL,NULL,'APOR-07020','FALSE',732,NULL,NULL,NULL),(736,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUYANTO A. SE',NULL,NULL,NULL,NULL,'APOR-07021','FALSE',733,NULL,NULL,NULL),(737,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MESYANNA',NULL,NULL,NULL,NULL,'APOR-08001','FALSE',734,NULL,NULL,NULL),(738,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANNA',NULL,NULL,NULL,NULL,'APOR-08002','FALSE',735,NULL,NULL,NULL),(739,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KEVIN ARMANDO GUNAWAN',NULL,NULL,NULL,NULL,'APOR-08003','FALSE',736,NULL,NULL,NULL),(740,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RIANTO WIDJAJA',NULL,NULL,NULL,NULL,'APOR-08005','FALSE',737,NULL,NULL,NULL),(741,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YANSEN CHRISTIAN',NULL,NULL,NULL,NULL,'APOR-08006','FALSE',738,NULL,NULL,NULL),(742,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BUDIMAN',NULL,NULL,NULL,NULL,'APOR-08007','FALSE',739,NULL,NULL,NULL),(743,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YOO SHIENNY KUMARI',NULL,NULL,NULL,NULL,'APOR-08008','FALSE',740,NULL,NULL,NULL),(744,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM PAU HUA',NULL,NULL,NULL,NULL,'APOR-08009','FALSE',741,NULL,NULL,NULL),(745,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUSIA ZENITHA NUGROHO',NULL,NULL,NULL,NULL,'APOR-08010','FALSE',742,NULL,NULL,NULL),(746,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ONG WELLI HIDAYAT',NULL,NULL,NULL,NULL,'APOR-08011','FALSE',743,NULL,NULL,NULL),(747,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BUDI SETYANTO',NULL,NULL,NULL,NULL,'APOR-08012','FALSE',744,NULL,NULL,NULL),(748,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SALIM',NULL,NULL,NULL,NULL,'APOR-08015','FALSE',745,NULL,NULL,NULL),(749,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANASTASIA KURNIAWATI TJANDRA',NULL,NULL,NULL,NULL,'APOR-08016','FALSE',746,NULL,NULL,NULL),(750,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANDREY CAESAR EFFENDI',NULL,NULL,NULL,NULL,'APOR-08017','FALSE',747,NULL,NULL,NULL),(751,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Anggit Yus Antonio',NULL,NULL,NULL,NULL,'APOR-08018','FALSE',748,NULL,NULL,NULL),(752,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BANIFACIUS TRIYONO',NULL,NULL,NULL,NULL,'APOR-08019','FALSE',749,NULL,NULL,NULL),(753,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'OKKY ORIZA RANI PUTRI',NULL,NULL,NULL,NULL,'APOR-08020','FALSE',750,NULL,NULL,NULL),(754,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUHENRY',NULL,NULL,NULL,NULL,'APOR-08021','FALSE',751,NULL,NULL,NULL),(755,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERNAWATI',NULL,NULL,NULL,NULL,'APOR-09001','FALSE',752,NULL,NULL,NULL),(756,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM TJAI KIUK ALS MARTA',NULL,NULL,NULL,NULL,'APOR-09002','FALSE',753,NULL,NULL,NULL),(757,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIONG LIE TJEN',NULL,NULL,NULL,NULL,'APOR-09003','FALSE',754,NULL,NULL,NULL),(758,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRIK',NULL,NULL,NULL,NULL,'APOR-09005','FALSE',755,NULL,NULL,NULL),(759,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUWANDI',NULL,NULL,NULL,NULL,'APOR-09006','FALSE',756,NULL,NULL,NULL),(760,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Han Nie',NULL,NULL,NULL,NULL,'APOR-09007','FALSE',757,NULL,NULL,NULL),(761,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ADI YUWONO',NULL,NULL,NULL,NULL,'APOR-09008','FALSE',758,NULL,NULL,NULL),(762,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERRY BUDIAWAN',NULL,NULL,NULL,NULL,'APOR-09009','FALSE',759,NULL,NULL,NULL),(763,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUSTADI',NULL,NULL,NULL,NULL,'APOR-09010','FALSE',760,NULL,NULL,NULL),(764,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BENNY',NULL,NULL,NULL,NULL,'APOR-09011','FALSE',761,NULL,NULL,NULL),(765,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DICKY PUDJANEGARA',NULL,NULL,NULL,NULL,'APOR-09012','FALSE',762,NULL,NULL,NULL),(766,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DEWISA ANNA',NULL,NULL,NULL,NULL,'APOR-09015','FALSE',763,NULL,NULL,NULL),(767,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEVEN GOHAN',NULL,NULL,NULL,NULL,'APOR-09016','FALSE',764,NULL,NULL,NULL),(768,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RIKA SUMANTRI',NULL,NULL,NULL,NULL,'APOR-09017','FALSE',765,NULL,NULL,NULL),(769,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RIKA SUMANTRI',NULL,NULL,NULL,NULL,'APOR-09017','FALSE',766,NULL,NULL,NULL),(770,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IR. HERRY SANJAYA',NULL,NULL,NULL,NULL,'APOR-09018','FALSE',767,NULL,NULL,NULL),(771,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KEANE ALEXANDER DAN KENZIE ALEXANDER',NULL,NULL,NULL,NULL,'APOR-09019','FALSE',768,NULL,NULL,NULL),(772,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERLISNI PATINAH',NULL,NULL,NULL,NULL,'APOR-09020','FALSE',769,NULL,NULL,NULL),(773,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELVIERA KOSASI',NULL,NULL,NULL,NULL,'APOR-09021','FALSE',770,NULL,NULL,NULL),(774,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ROSANNA ADJIE',NULL,NULL,NULL,NULL,'APOR-10001','FALSE',771,NULL,NULL,NULL),(775,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Djohan Andra Wijaya',NULL,NULL,NULL,NULL,'APOR-10002','FALSE',772,NULL,NULL,NULL),(776,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SAVITRI PRABANDARI',NULL,NULL,NULL,NULL,'APOR-10003','FALSE',773,NULL,NULL,NULL),(777,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APOR-10005','FALSE',774,NULL,NULL,NULL),(778,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LAIJ TJIN DJI',NULL,NULL,NULL,NULL,'APOR-10006','FALSE',775,NULL,NULL,NULL),(779,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SARTIKA',NULL,NULL,NULL,NULL,'APOR-10007','FALSE',776,NULL,NULL,NULL),(780,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERMAN',NULL,NULL,NULL,NULL,'APOR-10008','FALSE',777,NULL,NULL,NULL),(781,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TANDY HARYONO TJIN',NULL,NULL,NULL,NULL,'APOR-10009','FALSE',778,NULL,NULL,NULL),(782,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THERESIA BIANCHI MULYANI',NULL,NULL,NULL,NULL,'APOR-10010','FALSE',779,NULL,NULL,NULL),(783,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANTONIUS SOCO R.R',NULL,NULL,NULL,NULL,'APOR-10011','FALSE',780,NULL,NULL,NULL),(784,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DENNIS RAY CINTORO',NULL,NULL,NULL,NULL,'APOR-10012','FALSE',781,NULL,NULL,NULL),(785,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJAN FRANSISKA',NULL,NULL,NULL,NULL,'APOR-10015','FALSE',782,NULL,NULL,NULL),(786,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Rendy',NULL,NULL,NULL,NULL,'APOR-10016','FALSE',783,NULL,NULL,NULL),(787,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MERY ONGSONO',NULL,NULL,NULL,NULL,'APOR-10017','FALSE',784,NULL,NULL,NULL),(788,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUSI PURWANTI',NULL,NULL,NULL,NULL,'APOR-10018','FALSE',785,NULL,NULL,NULL),(789,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KONG WIYANTO PURWANTO',NULL,NULL,NULL,NULL,'APOR-10019','FALSE',786,NULL,NULL,NULL),(790,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRIKO WIJAYA',NULL,NULL,NULL,NULL,'APOR-10020','FALSE',787,NULL,NULL,NULL),(791,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'BIE GUAT / BILIANA',NULL,NULL,NULL,NULL,'APOR-10021','FALSE',788,NULL,NULL,NULL),(792,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUHARTY',NULL,NULL,NULL,NULL,'APOR-11001','FALSE',789,NULL,NULL,NULL),(793,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DESY',NULL,NULL,NULL,NULL,'APOR-11002','FALSE',790,NULL,NULL,NULL),(794,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'KUDIN',NULL,NULL,NULL,NULL,'APOR-11003','FALSE',791,NULL,NULL,NULL),(795,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LINDA ROSARIA',NULL,NULL,NULL,NULL,'APOR-11005','FALSE',792,NULL,NULL,NULL),(796,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIWATY WIDJAJA',NULL,NULL,NULL,NULL,'APOR-11006','FALSE',793,NULL,NULL,NULL),(797,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CHRISTINE SARI INDAH TANNYSIA',NULL,NULL,NULL,NULL,'APOR-11007','FALSE',794,NULL,NULL,NULL),(798,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JOHANES ANTONI',NULL,NULL,NULL,NULL,'APOR-11008','FALSE',795,NULL,NULL,NULL),(799,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALAMSYAH',NULL,NULL,NULL,NULL,'APOR-11009','FALSE',796,NULL,NULL,NULL),(800,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JIMMY',NULL,NULL,NULL,NULL,'APOR-11010','FALSE',797,NULL,NULL,NULL),(801,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SUTARJO',NULL,NULL,NULL,NULL,'APOR-11011','FALSE',798,NULL,NULL,NULL),(802,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERSIANTI',NULL,NULL,NULL,NULL,'APOR-11012','FALSE',799,NULL,NULL,NULL),(803,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LILIES',NULL,NULL,NULL,NULL,'APOR-11015','FALSE',800,NULL,NULL,NULL),(804,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JANSEN TANI & NANI JAMAN',NULL,NULL,NULL,NULL,'APOR-11016','FALSE',801,NULL,NULL,NULL),(805,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LINCE',NULL,NULL,NULL,NULL,'APOR-11017','FALSE',802,NULL,NULL,NULL),(806,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'NEIL IHSAL IMBRAN',NULL,NULL,NULL,NULL,'APOR-11018','FALSE',803,NULL,NULL,NULL),(807,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HAN TJOEI NGO',NULL,NULL,NULL,NULL,'APOR-11019','FALSE',804,NULL,NULL,NULL),(808,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DIDI HERMANSYAH',NULL,NULL,NULL,NULL,'APOR-11020','FALSE',805,NULL,NULL,NULL),(809,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YVONNE',NULL,NULL,NULL,NULL,'APOR-11021','FALSE',806,NULL,NULL,NULL),(810,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'VIVI SULISTIANI',NULL,NULL,NULL,NULL,'APOR-12001','FALSE',807,NULL,NULL,NULL),(811,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TANTY SURYA',NULL,NULL,NULL,NULL,'APOR-12002','FALSE',808,NULL,NULL,NULL),(812,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HAN TJOEI NGO',NULL,NULL,NULL,NULL,'APOR-12003','FALSE',809,NULL,NULL,NULL),(813,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THEN VIAN LANDAU',NULL,NULL,NULL,NULL,'APOR-12005','FALSE',810,NULL,NULL,NULL),(814,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FREDY SURYA',NULL,NULL,NULL,NULL,'APOR-12006','FALSE',811,NULL,NULL,NULL),(815,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YAHMO & ROSTHINA',NULL,NULL,NULL,NULL,'APOR-12007','FALSE',812,NULL,NULL,NULL),(816,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DJULAIMAN',NULL,NULL,NULL,NULL,'APOR-12008','FALSE',813,NULL,NULL,NULL),(817,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARDYANTO SANTIOSO',NULL,NULL,NULL,NULL,'APOR-12009','FALSE',814,NULL,NULL,NULL),(818,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Ridwan Muhammad Ir.',NULL,NULL,NULL,NULL,'APOR-12011','FALSE',815,NULL,NULL,NULL),(819,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TUTI ATUN',NULL,NULL,NULL,NULL,'APOR-12012','FALSE',816,NULL,NULL,NULL),(820,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HAIMANTO HANDOKO',NULL,NULL,NULL,NULL,'APOR-12015','FALSE',817,NULL,NULL,NULL),(821,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARTONO HASIAN, ONG',NULL,NULL,NULL,NULL,'APOR-12016','FALSE',818,NULL,NULL,NULL),(822,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LAY HIAN LIUNG',NULL,NULL,NULL,NULL,'APOR-12017','FALSE',819,NULL,NULL,NULL),(823,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRELLY A.S. WALUKOW',NULL,NULL,NULL,NULL,'APOR-12018','FALSE',820,NULL,NULL,NULL),(824,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Phan Henry C Rahman',NULL,NULL,NULL,NULL,'APOR-12019','FALSE',821,NULL,NULL,NULL),(825,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DHARMADI TJIUWI',NULL,NULL,NULL,NULL,'APOR-12020','FALSE',822,NULL,NULL,NULL),(826,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YEANNIFER',NULL,NULL,NULL,NULL,'APOR-12021','FALSE',823,NULL,NULL,NULL),(827,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SULIANI CHAIRUDDIN',NULL,NULL,NULL,NULL,'APOR-15001','FALSE',824,NULL,NULL,NULL),(828,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Siuwijaya',NULL,NULL,NULL,NULL,'APOR-15002','FALSE',825,NULL,NULL,NULL),(829,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ZETRIAL',NULL,NULL,NULL,NULL,'APOR-15003','FALSE',826,NULL,NULL,NULL),(830,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELISA MARGARETHA',NULL,NULL,NULL,NULL,'APOR-15005','FALSE',827,NULL,NULL,NULL),(831,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRA.HERLIANA LUKMAN LIOE',NULL,NULL,NULL,NULL,'APOR-15006','FALSE',828,NULL,NULL,NULL),(832,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'PURWIJAYANTO',NULL,NULL,NULL,NULL,'APOR-15007','FALSE',829,NULL,NULL,NULL),(833,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRA.HERLIANA LUKMAN LIOE',NULL,NULL,NULL,NULL,'APOR-15008','FALSE',830,NULL,NULL,NULL),(834,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FERRY TANUDJAJA',NULL,NULL,NULL,NULL,'APOR-15009','FALSE',831,NULL,NULL,NULL),(835,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUTH INDIAH RAHAYU',NULL,NULL,NULL,NULL,'APOR-15010','FALSE',832,NULL,NULL,NULL),(836,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APOR-15011','FALSE',833,NULL,NULL,NULL),(837,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CI JUNG',NULL,NULL,NULL,NULL,'APOR-15012','FALSE',834,NULL,NULL,NULL),(838,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'STEFANUS HALIM/BUDHA TZU CHI',NULL,NULL,NULL,NULL,'APOR-15015','FALSE',835,NULL,NULL,NULL),(839,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARTONO',NULL,NULL,NULL,NULL,'APOR-15016','FALSE',836,NULL,NULL,NULL),(840,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SOFIAN TJANDRA',NULL,NULL,NULL,NULL,'APOR-15017','FALSE',837,NULL,NULL,NULL),(841,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Husin Rimba',NULL,NULL,NULL,NULL,'APOR-15018','FALSE',838,NULL,NULL,NULL),(842,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARINI MULYOWIHARJO',NULL,NULL,NULL,NULL,'APOR-15019','FALSE',839,NULL,NULL,NULL),(843,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TJOH HENDRA',NULL,NULL,NULL,NULL,'APOR-15020','FALSE',840,NULL,NULL,NULL),(844,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FRANKY',NULL,NULL,NULL,NULL,'APOR-15021','FALSE',841,NULL,NULL,NULL),(845,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YENTI',NULL,NULL,NULL,NULL,'APOR-15A01','FALSE',842,NULL,NULL,NULL),(846,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MARTINA HARIYANTO',NULL,NULL,NULL,NULL,'APOR-15A02','FALSE',843,NULL,NULL,NULL),(847,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HARIES IBRAHIM (Edward James Ibrahim & Arshavin james Ibrahim )',NULL,NULL,NULL,NULL,'APOR-15A03','FALSE',844,NULL,NULL,NULL),(848,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FEBRIANTO',NULL,NULL,NULL,NULL,'APOR-15A05','FALSE',845,NULL,NULL,NULL),(849,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DWI OKTAVIANI',NULL,NULL,NULL,NULL,'APOR-15A06','FALSE',846,NULL,NULL,NULL),(850,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FREDDY, SE',NULL,NULL,NULL,NULL,'APOR-15A07','FALSE',847,NULL,NULL,NULL),(851,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JOHANES',NULL,NULL,NULL,NULL,'APOR-15A08','FALSE',848,NULL,NULL,NULL),(852,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TIRTA KUMALA',NULL,NULL,NULL,NULL,'APOR-15A09','FALSE',849,NULL,NULL,NULL),(853,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRS. SUFENDI TJUATJA',NULL,NULL,NULL,NULL,'APOR-15A10','FALSE',850,NULL,NULL,NULL),(854,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IR.SYACHBANDI',NULL,NULL,NULL,NULL,'APOR-15A11','FALSE',851,NULL,NULL,NULL),(855,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRS. SUFENDI TJUATJA',NULL,NULL,NULL,NULL,'APOR-15A12','FALSE',852,NULL,NULL,NULL),(856,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERIYANTO',NULL,NULL,NULL,NULL,'APOR-15A15','FALSE',853,NULL,NULL,NULL),(857,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JONG SIU HUA',NULL,NULL,NULL,NULL,'APOR-15A16','FALSE',854,NULL,NULL,NULL),(858,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENI YANTI',NULL,NULL,NULL,NULL,'APOR-15A17','FALSE',855,NULL,NULL,NULL),(859,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MIRAWATI PAPAN',NULL,NULL,NULL,NULL,'APOR-15A18','FALSE',856,NULL,NULL,NULL),(860,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM DARLIAH',NULL,NULL,NULL,NULL,'APOR-15A19','FALSE',857,NULL,NULL,NULL),(861,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HENDRIKO WIJAYA',NULL,NULL,NULL,NULL,'APOR-15A20','FALSE',858,NULL,NULL,NULL),(862,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUDY TJOENG',NULL,NULL,NULL,NULL,'APOR-15A21','FALSE',859,NULL,NULL,NULL),(863,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'THOMAS GANI',NULL,NULL,NULL,NULL,'APOR-16001','FALSE',860,NULL,NULL,NULL),(864,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERRY DAFJAN',NULL,NULL,NULL,NULL,'APOR-16002','FALSE',861,NULL,NULL,NULL),(865,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'TUMARI',NULL,NULL,NULL,NULL,'APOR-16003','FALSE',862,NULL,NULL,NULL),(866,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELLENA CHRISTIANTI H.',NULL,NULL,NULL,NULL,'APOR-16005','FALSE',863,NULL,NULL,NULL),(867,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'JONATHAN CHANDRA',NULL,NULL,NULL,NULL,'APOR-16006','FALSE',864,NULL,NULL,NULL),(868,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'CHIAN CHIAN',NULL,NULL,NULL,NULL,'APOR-16007','FALSE',865,NULL,NULL,NULL),(869,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'YOHANES EFENDY',NULL,NULL,NULL,NULL,'APOR-16008','FALSE',866,NULL,NULL,NULL),(870,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DARWIN CHANDRA',NULL,NULL,NULL,NULL,'APOR-16009','FALSE',867,NULL,NULL,NULL),(871,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'VIOLEN OLIVIA',NULL,NULL,NULL,NULL,'APOR-16010','FALSE',868,NULL,NULL,NULL),(872,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IRWAN',NULL,NULL,NULL,NULL,'APOR-16011','FALSE',869,NULL,NULL,NULL),(873,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Mariana Susanty',NULL,NULL,NULL,NULL,'APOR-16012','FALSE',870,NULL,NULL,NULL),(874,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FARA INDAH',NULL,NULL,NULL,NULL,'APOR-16015','FALSE',871,NULL,NULL,NULL),(875,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LUCY MARDULI',NULL,NULL,NULL,NULL,'APOR-16016','FALSE',872,NULL,NULL,NULL),(876,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ERVIN KOSASIH',NULL,NULL,NULL,NULL,'APOR-16017','FALSE',873,NULL,NULL,NULL),(877,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ELIDAD FRANSISCA ZEBUA',NULL,NULL,NULL,NULL,'APOR-16018','FALSE',874,NULL,NULL,NULL),(878,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ADRIAN HARTANTO SAPUTRA',NULL,NULL,NULL,NULL,'APOR-16019','FALSE',875,NULL,NULL,NULL),(879,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DARWIS RESTU WIDJAJA',NULL,NULL,NULL,NULL,'APOR-16020','FALSE',876,NULL,NULL,NULL),(880,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AINA',NULL,NULL,NULL,NULL,'APOR-16021','FALSE',877,NULL,NULL,NULL),(881,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'SHANG GUANGLI QQ PT SUKSES CEMERLANG NUSANTARA',NULL,NULL,NULL,NULL,'APOR-17005','FALSE',878,NULL,NULL,NULL),(882,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LIM WEI CHONG QQ PT INNOCERA',NULL,NULL,NULL,NULL,'APOR-17007','FALSE',879,NULL,NULL,NULL),(883,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Maria Halim Saputra',NULL,NULL,NULL,NULL,'APOR-17008','FALSE',880,NULL,NULL,NULL),(884,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DJAP LIE SIAN',NULL,NULL,NULL,NULL,'APOR-17009','FALSE',881,NULL,NULL,NULL),(885,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'Maria Halim Saputra',NULL,NULL,NULL,NULL,'APOR-17010','FALSE',882,NULL,NULL,NULL),(886,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DIANA',NULL,NULL,NULL,NULL,'APOR-17011','FALSE',883,NULL,NULL,NULL),(887,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'IRWAN',NULL,NULL,NULL,NULL,'APOR-17012','FALSE',884,NULL,NULL,NULL),(888,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'RUDY GUNAWAN',NULL,NULL,NULL,NULL,'APOR-17015','FALSE',885,NULL,NULL,NULL),(889,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'HERRYANI GUNAWAN',NULL,NULL,NULL,NULL,'APOR-17016','FALSE',886,NULL,NULL,NULL),(890,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'AGUS SALIM',NULL,NULL,NULL,NULL,'APOR-17017','FALSE',887,NULL,NULL,NULL),(891,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DJAP NGIT NEN',NULL,NULL,NULL,NULL,'APOR-18005','FALSE',888,NULL,NULL,NULL),(892,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'DRS.JONI TJU',NULL,NULL,NULL,NULL,'APOR-18007','FALSE',889,NULL,NULL,NULL),(893,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'EFI WINAWATY',NULL,NULL,NULL,NULL,'APOR-18008','FALSE',890,NULL,NULL,NULL),(894,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ANTHON SANTOSO',NULL,NULL,NULL,NULL,'APOR-18009','FALSE',891,NULL,NULL,NULL),(895,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'LELAWATI',NULL,NULL,NULL,NULL,'APOR-18010','FALSE',892,NULL,NULL,NULL),(896,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'MAYONE',NULL,NULL,NULL,NULL,'APOR-18011','FALSE',893,NULL,NULL,NULL),(897,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ONG TJAI THEN',NULL,NULL,NULL,NULL,'APOR-18012','FALSE',894,NULL,NULL,NULL),(898,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'FANNY SUSANTONG',NULL,NULL,NULL,NULL,'APOR-18015','FALSE',895,NULL,NULL,NULL),(899,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'ALOISIUS YUWONO',NULL,NULL,NULL,NULL,'APOR-18016','FALSE',896,NULL,NULL,NULL),(900,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'GETRUICLAR MENAJANG',NULL,NULL,NULL,NULL,'APOR-18017','FALSE',897,NULL,NULL,NULL);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_accesses`
--

DROP TABLE IF EXISTS `user_accesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_accesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tenant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accesses`
--

LOCK TABLES `user_accesses` WRITE;
/*!40000 ALTER TABLE `user_accesses` DISABLE KEYS */;
INSERT INTO `user_accesses` VALUES (1,NULL,'1','1','abdulghoji31@gmail.com','081288372226','2021-07-15 06:50:46','2021-07-15 06:50:46','1');
/*!40000 ALTER TABLE `user_accesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `user_roles_user_id_index` (`user_id`) USING BTREE,
  KEY `user_roles_role_id_index` (`role_id`) USING BTREE,
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supervisor` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(88) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_property_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  KEY `users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,1,'Abdul Ghoji Hanggoro','abdulghoji31@gmail.com','users/February2022/r0MB3voXcgbwbO7rmoDb.jpg',NULL,'$2y$10$L6BMuEVBMzQq2ad.THRtiuC95jz6XhftxgRhhIjL3FkVBgmuUbnOS','Y811YlXcA4QVzH7yQ5weCZpioN2d2IGF9y5fOdZvJnzGTGpBSbydVVFJfwAw','{\"locale\":\"en\"}','2021-06-30 20:34:52','2022-02-05 09:25:26',NULL,NULL,'628119731394',NULL,NULL),(5,1,'Raymond LA','raymond@thecityresort.com','users/February2022/GZLuJVUo5BPXELgxn2Oz.jpg',NULL,'$2y$10$wdZnZpSUGYcB./VwHhOD0ukuU4qrpCNzUDYzJQinin7knpeyC2BLm','7bNtEolJUGGNg3CqXDMg3sU5x0Q6v9Wbs9EH9Doz3vNcERnExwwzWPU4ChSU','{\"locale\":\"en\"}','2021-07-15 04:03:51','2022-04-11 22:30:00',NULL,NULL,'628567799791',NULL,NULL),(18,8,'Hardi Salim','hardi@thecityresort.com','users/default.png',NULL,'$2y$10$L6BMuEVBMzQq2ad.THRtiuC95jz6XhftxgRhhIjL3FkVBgmuUbnOS',NULL,'{\"locale\":\"en\"}','2021-11-13 07:39:39','2022-03-19 01:06:06',NULL,NULL,'628119731394',NULL,NULL),(23,19,'Employee','accounting@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-03-19 03:56:04',NULL,NULL,'628119731394',NULL,NULL),(24,NULL,'Employee','admin@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(25,NULL,'Employee','cashier@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(26,NULL,'Employee','collection1@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(27,NULL,'Employee','collection2@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(28,NULL,'Employee','cs1@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(29,NULL,'Employee','cs2@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(30,NULL,'Employee','cs3@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(31,NULL,'Employee','cso@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(32,NULL,'Employee','daniel@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(33,NULL,'Employee','ersa@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(34,NULL,'Employee','finance@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(35,NULL,'Employee','generalaffair@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(38,NULL,'Employee','hrd@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(39,NULL,'Employee','info@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(40,NULL,'Employee','itsupport@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(41,NULL,'Employee','legal@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(42,NULL,'Employee','parking.admin@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(43,NULL,'Employee','purchasing1@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(44,NULL,'Employee','purchasing2@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(45,NULL,'Employee','ramon@thecityresort.com','users/default.png',NULL,'$2y$10$k/kwGyLwxjZBWziQHnQp3OpxAa9RXRnP3aeGwBFM9BLxj1YCHimBq','cnTeh7FvrStBQwhkJToMgTGXk6luWObrHTWiWYxa9IteKluLc5qcBlOGZ2Zm','{\"locale\":\"en\"}','2021-06-30 13:34:52','2022-02-05 02:25:26',NULL,NULL,'628119731394',NULL,NULL),(46,NULL,'Ahmad Rivaldi','ahmadrivaldi@thecityresort.com','users/default.png',NULL,'$2y$10$cJv9XYWcBEZL93l8dQFp4O97bZnGjngl0QimniIBWSDYu2bQkktlS',NULL,'{\"locale\":\"en\"}','2022-04-16 01:42:38','2022-04-16 01:42:38',NULL,NULL,NULL,NULL,NULL),(47,NULL,'Andrian','andrian@thecityresort.com','users/default.png',NULL,'$2y$10$TvU0xB0h.9TL91dngsc4DepO7Tq8WhZKcagsR.8lRvs2NBiB04DUW',NULL,'{\"locale\":\"en\"}','2022-04-16 01:43:06','2022-04-16 01:43:06',NULL,NULL,NULL,NULL,NULL),(48,NULL,'dana','dana@thecityresort.com','users/default.png',NULL,'$2y$10$SF5dzRcNrKDllp57FoQlw.tDYHdN1JYB62HId2lRPyknhisNDUTGi',NULL,'{\"locale\":\"en\"}','2022-04-16 01:43:23','2022-04-16 01:43:23',NULL,NULL,NULL,NULL,NULL),(49,NULL,'Irwan','irwan@thecityresort.com','users/default.png',NULL,'$2y$10$TN1zvcw.CMRyv4Avm5CTxuv98TtSjrLumF9HB6Xxzsn2qBBQy2ft6',NULL,'{\"locale\":\"en\"}','2022-04-16 01:43:41','2022-04-16 01:43:41',NULL,NULL,NULL,NULL,NULL),(50,NULL,'Wahyuni','wahyuni@thecityresort.com','users/default.png',NULL,'$2y$10$IO2MBv0DmUZT460GOZ/mcuTuNon6fWbNsCiSZ3XzBtx9cWw8Czp/O',NULL,'{\"locale\":\"en\"}','2022-04-16 01:43:58','2022-04-16 01:43:58',NULL,NULL,NULL,NULL,NULL),(51,6,'Widi','widi@thecityresort.com','users/default.png',NULL,'$2y$10$4wzatQRBRA/r6dnBcqDWxuLjY/PcPeXUV69o/ucVAfc5si1Mj4K06',NULL,'{\"locale\":\"en\"}','2022-04-16 01:44:21','2022-04-17 00:03:09',NULL,NULL,'628119731394',NULL,6),(52,5,'dansek','dansek@gmail.com','users/default.png',NULL,'$2y$10$1MIV4xOQMlMtIP1/JYbKEeYsUZUS3CCZR8J1oetJFicmfD00SD.9W',NULL,'{\"locale\":\"en\"}','2022-04-16 23:14:12','2022-04-16 23:22:26',NULL,NULL,NULL,NULL,8),(53,5,'danru 1','danru1@gmail.com','users/default.png',NULL,'$2y$10$ar6SxkXBxYBFHgo2BYFfyOFngFiNIkdFX2rYKclB0BB4Vq7OD6PLu',NULL,'{\"locale\":\"en\"}','2022-04-16 23:14:32','2022-04-16 23:22:43',NULL,NULL,NULL,NULL,3),(54,5,'danru 2','danru2@gmail.com','users/default.png',NULL,'$2y$10$iyPXukO9SZ143XybCKqnKOlMyodyWmEgyqtcD.gk0GptMeDAsjeBO',NULL,'{\"locale\":\"en\"}','2022-04-16 23:14:46','2022-04-16 23:22:58',NULL,NULL,NULL,NULL,4),(55,5,'anggota 1 User 1','anggota1user1@gmail.com','users/default.png',NULL,'$2y$10$BJaMK8co1Te2tujhEdEN6eDBzLpsZKHmHfhRqlIvcGrE.aK.aV5aC',NULL,'{\"locale\":\"en\"}','2022-04-16 23:19:39','2022-04-17 05:11:56',NULL,NULL,'628119731394',NULL,1),(56,5,'anggota 1 user 2','anggota1user2@gmail.com','users/default.png',NULL,'$2y$10$ZLIaLtDvb0ZofdDNFQ.4D.b.X4n0SR8yCzZSqN8lriZXWKy5b/SEu',NULL,'{\"locale\":\"en\"}','2022-04-16 23:20:06','2022-04-16 23:23:56',NULL,NULL,NULL,NULL,1),(57,5,'anggota 2 user 1','anggota2user1@gmail.com','users/default.png',NULL,'$2y$10$O35mv4DiptCNHjGD626YWedYbFiupgD1e3uElLXH3AOAxBQBYd.dW',NULL,'{\"locale\":\"en\"}','2022-04-16 23:20:33','2022-04-16 23:24:08',NULL,NULL,NULL,NULL,2),(58,5,'anggota 2 user 2','anggota2user2@gmail.com','users/default.png',NULL,'$2y$10$.uTt6lIr6719exSW6YZzKOnfH5t2PQsh5zU1Hve9UiIoigVZv5MFi',NULL,'{\"locale\":\"en\"}','2022-04-16 23:21:02','2022-04-16 23:26:14',NULL,NULL,'628119731394',NULL,2),(59,5,'Admin Security','admin@security.com','users/default.png',NULL,'$2y$10$OPupjFvZXc0ZEECXcp9zmeXkM3HigMrdJnckW6sr4Uatpdi9bS6by',NULL,'{\"locale\":\"en\"}','2022-04-17 04:50:45','2022-04-17 05:03:11',NULL,NULL,'628119731394',NULL,10);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_meters`
--

DROP TABLE IF EXISTS `water_meters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `water_meters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `current_meter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `before_meter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_meters`
--

LOCK TABLES `water_meters` WRITE;
/*!40000 ALTER TABLE `water_meters` DISABLE KEYS */;
/*!40000 ALTER TABLE `water_meters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `role_group`
--

/*!50001 DROP TABLE IF EXISTS `role_group`*/;
/*!50001 DROP VIEW IF EXISTS `role_group`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`cityresort_prod`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `role_group` AS select `t1`.`id` AS `id`,`t1`.`role_id` AS `role_id`,`t1`.`name` AS `lev1`,count(`t2`.`name`) AS `lev2`,count(`t3`.`name`) AS `lev3`,count(`t4`.`name`) AS `lev4` from (((`users` `t1` left join `users` `t2` on(`t2`.`supervisor` = `t1`.`id`)) left join `users` `t3` on(`t3`.`supervisor` = `t2`.`id`)) left join `users` `t4` on(`t4`.`supervisor` = `t3`.`id`)) group by `t1`.`id`,`t1`.`role_id`,`t1`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02  0:32:13
