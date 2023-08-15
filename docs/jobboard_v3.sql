-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: jobboard
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'TechWiz','admin@admin.com','$2y$10$1hfASOU8VirjJfiLat5LYuklAMWAY1Gpm3wuq6eB.WU0T/NrNJ/ba','2023-08-12 23:15:33','2023-08-12 23:15:33'),(2,'everson','everson@gmail.com','$2y$10$27VDoydLlV1CGioYkU3Ci.l0WQVopX7ylFuc662KWKY9/tjmngm32','2023-08-13 05:50:14','2023-08-13 05:50:14');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cv` varchar(255) DEFAULT NULL,
  `job_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `job_image` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `job_region` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (3,'boleta_inscripcion18_07_2023EVER QUISPE CHOQUEHUANCAa.pdf',3,1,'admin@admin.com','job_logo_4.jpg','Laravel Teacher','Anywhere','Teaching Now','Part Time','2023-08-15 17:43:41','2023-08-15 17:43:41'),(5,'22-CSS-Flexbox-y-Grid.pdf',1,2,'ever@ever.com','job_logo_1.jpg','Product Designer','New York, New York','Adidas','full time','2023-08-15 17:47:04','2023-08-15 17:47:04'),(6,'22-CSS-Flexbox-y-Grid.pdf',2,2,'ever@ever.com','job_logo_3.jpg','Front End Developer','Cairo, Cairo','Amazon','Part Time','2023-08-15 18:38:19','2023-08-15 18:38:19'),(7,'22-CSS-Flexbox-y-Grid.pdf',3,2,'ever@ever.com','job_logo_4.jpg','Laravel Teacher','Anywhere','Teaching Now','Part Time','2023-08-15 18:38:32','2023-08-15 18:38:32');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Programming','2023-08-06 21:09:43','2023-08-13 21:52:50'),(2,'Design','2023-08-06 21:09:43','2023-08-06 21:09:43'),(3,'Coaching','2023-08-13 20:33:39','2023-08-13 21:52:08');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) DEFAULT NULL,
  `job_region` varchar(255) DEFAULT NULL,
  `company` varchar(255) NOT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `vacancy` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `aplication_deadline` varchar(255) DEFAULT NULL,
  `jobdescription` text DEFAULT NULL,
  `responsibilities` text DEFAULT NULL,
  `education_experience` text DEFAULT NULL,
  `otherbenifits` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Product Designer','New York, New York','Adidas','full time','2','2 to 3 year(s)','$60k - $100k','Any','April 28, 2019','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.','job_logo_1.jpg','Programming','2023-08-06 20:03:22','2023-08-06 20:03:22'),(2,'Front End Developer','Cairo, Cairo','Amazon','Part Time','2','4 to 7 year(s)','$100k - $150k','Any','April 15, 2023','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.','job_logo_3.jpg','Programming','2023-08-06 21:20:25','2023-08-06 21:20:25'),(3,'Laravel Teacher','Anywhere','Teaching Now','Part Time','5','1-3 years','$50k - $70k','Any','April 28, 2023','Como acabamos de mencionar, las cuentas de alojamiento web ofrecen un servicio para\r\nadministrar los archivos del sitio web desde el navegador. Esta es una página web a la que\r\npodemos acceder desde el panel de control para subir, bajar y editar los archivos en el servidor.','Como acabamos de mencionar, las cuentas de alojamiento web ofrecen un servicio para\r\nadministrar los archivos del sitio web desde el navegador. Esta es una página web a la que\r\npodemos acceder desde el panel de control para subir, bajar y editar los archivos en el servidor.','Como acabamos de mencionar, las cuentas de alojamiento web ofrecen un servicio para\r\nadministrar los archivos del sitio web desde el navegador. Esta es una página web a la que\r\npodemos acceder desde el panel de control para subir, bajar y editar los archivos en el servidor.','Como acabamos de mencionar, las cuentas de alojamiento web ofrecen un servicio para\r\nadministrar los archivos del sitio web desde el navegador. Esta es una página web a la que\r\npodemos acceder desde el panel de control para subir, bajar y editar los archivos en el servidor.','job_logo_4.jpg','Programming','2023-08-14 03:23:39','2023-08-14 03:23:39');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsaved`
--

DROP TABLE IF EXISTS `jobsaved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsaved` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `job_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `job_image` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `job_region` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsaved`
--

LOCK TABLES `jobsaved` WRITE;
/*!40000 ALTER TABLE `jobsaved` DISABLE KEYS */;
INSERT INTO `jobsaved` VALUES (1,2,1,'job_logo_3.jpg','Front End Developer','Cairo, Cairo','Part Time','Amazon','2023-08-07 16:37:59','2023-08-07 16:37:59'),(2,1,1,'job_logo_1.jpg','Product Designer','New York, New York','full time','Adidas','2023-08-07 17:11:07','2023-08-07 17:11:07'),(3,1,2,'job_logo_1.jpg','Product Designer','New York, New York','full time','Adidas','2023-08-15 17:46:58','2023-08-15 17:46:58');
/*!40000 ALTER TABLE `jobsaved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searches` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searches`
--

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
INSERT INTO `searches` VALUES (3,'Developer','2023-08-11 21:15:08','2023-08-11 21:15:08'),(4,'Developer','2023-08-11 21:15:08','2023-08-11 21:15:08'),(5,'Teacher','2023-08-11 21:15:08','2023-08-11 21:15:08'),(6,'Teacher','2023-08-11 21:15:08','2023-08-11 21:15:08'),(7,'Coach','2023-08-11 21:15:08','2023-08-11 21:15:08'),(8,'Coach','2023-08-11 21:15:08','2023-08-11 21:15:08'),(9,'Coach','2023-08-11 21:15:08','2023-08-11 21:15:08');
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'pic.jpg',
  `cv` varchar(255) NOT NULL DEFAULT 'No cv',
  `job_title` varchar(255) NOT NULL DEFAULT 'No job title',
  `bio` text DEFAULT NULL,
  `twitter` varchar(255) NOT NULL DEFAULT 'No twitter',
  `facebook` varchar(255) NOT NULL DEFAULT 'No facebook',
  `linkedin` varchar(255) NOT NULL DEFAULT 'No linkedin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@admin.com',NULL,'$2y$10$1hfASOU8VirjJfiLat5LYuklAMWAY1Gpm3wuq6eB.WU0T/NrNJ/ba','pic.jpg','boleta_inscripcion18_07_2023EVER QUISPE CHOQUEHUANCAa.pdf','Laravel Developer','es un apasionado por compartir sus conocimientos y experiencia con la comunidad. Ha escrito art├¡culos t├®cnicos, impartido charlas y tutoriales en l├¡nea para ayudar a otros desarrolladores a comprender y utilizar Laravel de manera efectiva.','No twitter','No facebook','No linkedin',NULL,'2023-08-05 22:05:35','2023-08-09 19:15:54'),(2,'Ever','ever@ever.com',NULL,'$2y$10$PubD//YDGPhydGMEWfzDBOFWGT.PNmH8N41XSJBa1Zgz7ZSjiRjvW','pic.jpg','22-CSS-Flexbox-y-Grid.pdf','No job title',NULL,'No twitter','No facebook','No linkedin',NULL,'2023-08-09 19:20:31','2023-08-09 19:28:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-15 16:54:02
