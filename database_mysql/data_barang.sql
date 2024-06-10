/*
SQLyog Ultimate
MySQL - 8.0.30 : Database - data_barang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`data_barang` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `data_barang`;

/*Table structure for table `calendar_events` */

CREATE TABLE `calendar_events` (
  `id_events` int NOT NULL AUTO_INCREMENT,
  `title_events` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes_events` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_event` int NOT NULL DEFAULT '0',
  `created_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_events`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `calendar_events` */

insert  into `calendar_events`(`id_events`,`title_events`,`notes_events`,`start_date`,`end_date`,`status_event`,`created_at`,`created_by`,`updated_at`,`updated_by`) values (1,'Gajian bulan maret','<p><strong>Uang kompensasi dan lainnya, total Rp.11,176,493,</strong></p>\r\n\r\n<p><strong>- udah di tf ke gopay 4,216.000</strong></p>\r\n','2024-03-25',NULL,0,'2024-03-25 15:41:27','idhammansyah','2024-04-18 16:37:11','idhammansyah');

/*Table structure for table `data_barang` */

CREATE TABLE `data_barang` (
  `id_barang` int NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_barang` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `merk_barang` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `harga` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keperluan_barang` mediumtext COLLATE utf8mb4_general_ci,
  `status_approval` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approval_manager_at` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approval_manager_by` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reason_rejected_manager` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_approval_finance` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approval_finance_at` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approval_finance_by` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_upload_name` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reason_rejected_finance` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kolom 18` int DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `data_barang` */

insert  into `data_barang`(`id_barang`,`nama_barang`,`jenis_barang`,`merk_barang`,`harga`,`keperluan_barang`,`status_approval`,`approval_manager_at`,`approval_manager_by`,`reason_rejected_manager`,`status_approval_finance`,`approval_finance_at`,`approval_finance_by`,`file_upload_name`,`reason_rejected_finance`,`deleted`,`created_at`,`created_by`,`updated_at`,`updated_by`,`Kolom 18`) values (1,'Iphone 14','Smartphone','Apple','14.400.000','Kebutuhan untuk divisi marcomm','Rejected','2024-06-09 23:48:50','manager','overbudget. Silahkan cari lagi.','Rejected','2024-06-09 23:56:03','finance',NULL,'sdsasdsa',0,'2024-06-09 23:47:25','officer',NULL,NULL,NULL),(2,'Kamera Canon 600D','Kamera Digital','Canon','5.000.000','Keperluan video content','Accepted','2024-06-09 23:56:57','manager',NULL,'Accepted','2024-06-10 18:47:00','finance','bismillah.jpeg',NULL,0,'2024-06-09 23:48:25','officer',NULL,NULL,NULL);

/*Table structure for table `jobs` */

CREATE TABLE `jobs` (
  `id_jobs` int NOT NULL AUTO_INCREMENT,
  `uid_hash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `id_company` int DEFAULT NULL,
  `id_department` int DEFAULT NULL,
  `id_level` int DEFAULT NULL,
  `id_position` int DEFAULT NULL,
  `id_contracts` int DEFAULT NULL,
  `id_location` int DEFAULT NULL,
  `job_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `publish` int DEFAULT NULL,
  `active` int DEFAULT NULL,
  `opening_at` date DEFAULT NULL,
  `closed_at` date DEFAULT NULL,
  `created_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_jobs`),
  UNIQUE KEY `Index 2` (`uid_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `jobs` */

insert  into `jobs`(`id_jobs`,`uid_hash`,`id_company`,`id_department`,`id_level`,`id_position`,`id_contracts`,`id_location`,`job_content`,`publish`,`active`,`opening_at`,`closed_at`,`created_at`,`created_by`,`updated_at`,`updated_by`) values (1,'0ef28940916ac14323949e9a6aa934be',1,13,1,86,1,1,'<div>\r\n<h2>Deskripsi pekerjaan Android Developer PT Ace Global Consulting and Integration</h2>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div><strong>Responsibilities:</strong></div>\r\n</div>\r\n\r\n<ol>\r\n	<li>\r\n	<div>Maintaining source code.</div>\r\n	</li>\r\n	<li>\r\n	<div>Proposing system design: High Level Design (HLD), Low Level Design (LLD), Database design (ERD).</div>\r\n	</li>\r\n	<li>\r\n	<div>Programming web, mobile, batch.</div>\r\n	</li>\r\n</ol>\r\n\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div><strong>Qualifications:</strong></div>\r\n</div>\r\n\r\n<ol>\r\n	<li>\r\n	<div>Bachelor&rsquo;s/ Master&rsquo;s degree from Information Technology, Computer Science, Information System, or a related field.</div>\r\n	</li>\r\n	<li>\r\n	<div>Passion in coding and software development.</div>\r\n	</li>\r\n	<li>\r\n	<div>Critical thinking and logical communication.</div>\r\n	</li>\r\n	<li>\r\n	<div>Excellent problem-solving and debugging skills.</div>\r\n	</li>\r\n	<li>\r\n	<div>Experience with Java, Android (iOS optional), React Native, and Java script.</div>\r\n	</li>\r\n	<li>\r\n	<div>Familiar with database and query SQL.</div>\r\n	</li>\r\n	<li>\r\n	<div>Able to work in a team and individually.</div>\r\n	</li>\r\n	<li>\r\n	<div>Good leadership.</div>\r\n	</li>\r\n	<li>\r\n	<div>Preferable for those who are experienced in Mobile Application Developer at least for 2 years.</div>\r\n	</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n',1,1,'2024-04-20','2024-04-23','2024-04-18 11:30:34','idhammansyah','2024-04-18 11:30:34','idhammansyah'),(2,'c68e69a87fa322d50ff71d88bb2fc5e6',1,1,1,1,1,1,'<p>coba</p>\r\n',1,1,'2030-11-01','2030-11-01','2024-04-18 13:10:04','idhammansyah','2024-04-18 13:10:04','idhammansyah');

/*Table structure for table `m_company` */

CREATE TABLE `m_company` (
  `id_company` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_company`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `m_company` */

insert  into `m_company`(`id_company`,`company_name`,`company_picture`) values (1,'Abhati Group','abhati.svg'),(2,'Alfa Beauty Cosmetic','abc.svg'),(3,'Apollo Agung Chemical','apollo.svg'),(4,'Bungursari Lake Park','blp.svg'),(5,'Bungursari Lake View','blv.svg'),(6,'Gala Laksana Kreasi','glk.svg'),(7,'Gala Natura Kreasi','gnk.svg'),(8,'Gemma Natura Lestari','gnl.svg'),(9,'Hotel Harper Purwakarta','hhp.svg'),(10,'Megasetia Agung Kimia','mgs.svg'),(11,'Verona Hills','vh.svg'),(12,'Megasetia Amora Karsa','amora.svg'),(13,'Abhati Property Resort','abhatiland.svg'),(14,'Merry Riana Group',NULL);

/*Table structure for table `m_contract` */

CREATE TABLE `m_contract` (
  `id_contract` int NOT NULL AUTO_INCREMENT,
  `contract_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_contract`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `m_contract` */

insert  into `m_contract`(`id_contract`,`contract_name`) values (1,'Full Time'),(2,'Contract'),(3,'Internship');

/*Table structure for table `m_department` */

CREATE TABLE `m_department` (
  `id_dept` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_dept`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `m_department` */

insert  into `m_department`(`id_dept`,`department_name`) values (1,'BLC / PLB'),(2,'Compliance'),(3,'Engineering'),(4,'Finance, Accounting, & Tax'),(5,'Food & Beverage'),(6,'Front Office'),(7,'General Affair (GA)'),(8,'Housekeeping'),(9,'Human Resource & Legal'),(10,'Import'),(11,'Industrial'),(12,'Internal Audit'),(13,'IT'),(14,'Kitchen'),(15,'Logistic'),(16,'Marketing & Communication'),(17,'Medical Technology'),(18,'Operational'),(19,'Personal Care & Home Care'),(20,'Pharmaceutical'),(21,'Production'),(22,'Purchasing'),(23,'QC/QA'),(24,'Research & Development'),(25,'Sales & Marketing'),(26,'Service'),(27,'Supply Chain'),(33,'Warehouse');

/*Table structure for table `m_level` */

CREATE TABLE `m_level` (
  `id_level` int NOT NULL AUTO_INCREMENT,
  `level_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `m_level` */

insert  into `m_level`(`id_level`,`level_name`) values (1,'Operational'),(2,'Staff'),(3,'Coordinator/Spv'),(4,'Assistant Manager'),(5,'Manager/Department Head'),(6,'Division Head'),(7,'Internship');

/*Table structure for table `m_location` */

CREATE TABLE `m_location` (
  `id_location` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_location`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `m_location` */

insert  into `m_location`(`id_location`,`location_name`) values (1,'DKI Jakarta'),(2,'Purwakarta');

/*Table structure for table `m_position` */

CREATE TABLE `m_position` (
  `id_position` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_position`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `m_position` */

insert  into `m_position`(`id_position`,`position_name`) values (1,'Account Receivable'),(2,'Accounting'),(3,'Accounting & Tax'),(4,'Admin Bank'),(5,'Admin Commercial'),(6,'Admin General'),(7,'Admin Lab. Sample'),(8,'Admin Logistic'),(9,'Admin Purchasing & Personal Assistant'),(10,'Admin Subsy Marketing'),(11,'Admin Valasi'),(12,'Admin Warehouse'),(13,'Administrasi'),(14,'Apoteker'),(15,'Apoteker Penanggungjawab PBBBF'),(16,'Application Lab'),(17,'Architect'),(18,'Area Manager'),(19,'Asisten Technical'),(20,'Asst Executive Housekeeper'),(21,'ASST FOM'),(22,'ASST. RESTO MGR'),(23,'Banking and External Relation'),(24,'BLC Admin'),(25,'BLC Controller'),(26,'BLC Custom'),(27,'BLC Operational'),(28,'Business Development'),(29,'Business Development & Marketing'),(30,'Business Executive'),(31,'Business Process & System Analyst'),(32,'Cashier'),(33,'CDP'),(34,'CDP Pastry'),(35,'Central Resources Director'),(36,'Chef Bakery & Beverages'),(37,'Chief Accounting'),(38,'Chief Engineer'),(39,'City Management'),(40,'City Management'),(41,'Co-Driver'),(42,'Collection'),(43,'Collector'),(44,'Compensation & Benefit'),(45,'Compliance'),(46,'Content Creator'),(47,'Cook'),(48,'Cook Helper'),(49,'Cook Pastry'),(50,'Cost Control'),(51,'Courir'),(52,'Creative Graphic Designer'),(53,'Customer Relation Executive'),(54,'Digital Marketing'),(55,'Drafter'),(56,'Driver'),(57,'ENG ATTD'),(58,'Engineer'),(59,'Executive Chef'),(60,'Executive Housekeeper'),(61,'FAT Controller'),(62,'FB Captain'),(63,'Finance'),(64,'Finance & Accounting'),(65,'Finance Accounting & Tax'),(66,'FO Spv'),(67,'Food and Beverage'),(68,'Front Desk Agent'),(69,'Front Office'),(70,'General Affair'),(71,'General Maintenance'),(72,'General Manager'),(73,'Gudang'),(74,'Helper Engineering'),(75,'Helper Logistic'),(76,'Helper Production'),(77,'Housekeeping Spv'),(78,'HR & Legal'),(79,'HR Generalist'),(80,'HR Officer'),(81,'Import'),(82,'Income Audit/AR'),(83,'Inspector'),(84,'Internal Audit'),(85,'Invoice'),(86,'IT'),(87,'Koordinator Operasional'),(88,'Laboratory'),(89,'Learning & Development'),(90,'Learning & Knowledge'),(91,'Legal'),(92,'Local Purchase Coord.'),(93,'Logistic'),(94,'Maintenance Operational'),(95,'Market Access Officer'),(96,'Marketing'),(97,'Marketing & Communication'),(98,'Marketing Executive'),(99,'Marketing Support'),(100,'Office Boy'),(101,'Office Manager'),(102,'Operasional Finance'),(103,'Operasional Gudang'),(104,'Operasional Gudang Bandung'),(105,'Operasional Import'),(106,'Operasional Produksi Bogor'),(107,'Operasional Produksi JKT'),(108,'Operational Division Head'),(109,'Operational Logistic'),(110,'Operational Manager'),(111,'Operational Pengambilan D/O'),(112,'Operator Produksi'),(113,'Organizational Development'),(114,'Pelaksana Proyek'),(115,'Penanggung Jawab Teknis (PJT)'),(116,'Pengawas Bangunan'),(117,'Pengawas Lapangan'),(118,'Pengawas Teknik'),(119,'People Development'),(120,'Personal Assistant'),(121,'Pharma Support'),(122,'Planning & Design'),(123,'Product & Service'),(124,'Product Manager'),(125,'Produksi'),(126,'Programmer'),(127,'Project Development & Technical Manager'),(128,'Project Engineer'),(129,'Project Management'),(130,'Project Manager'),(131,'Promotion'),(132,'Public Area Attendant'),(133,'Purchasing'),(134,'QA'),(135,'QC'),(136,'Quantity Surveyor'),(137,'Receiving/Storekeeper'),(138,'Receptionist'),(139,'Recruitment'),(140,'Regulatory'),(141,'Research & Development'),(142,'Reservationist'),(143,'Resto SPV'),(144,'RnD'),(145,'Room Attendant'),(146,'Sales'),(147,'Sales & Marketing'),(148,'Sales Admin'),(149,'Sales Executive'),(150,'Sales Food Industry'),(151,'Sales Representative'),(152,'Sales Support'),(153,'Sales Textile Chemicals'),(154,'Secretary'),(155,'Security'),(156,'Service Engineer'),(157,'Social Media Specialist'),(158,'Steward'),(159,'Supply Chain'),(160,'Surveyor'),(161,'System Operation & Stock Supervisor'),(162,'Tax'),(163,'Tax & Invoice'),(164,'Team Leader Driver'),(165,'Team Leader Maintenance'),(166,'Technic'),(167,'Technical Sales Executive'),(168,'Teknik'),(169,'Teknisi'),(170,'Teknisi MEP'),(171,'Treasury Import Staff'),(172,'Waiter'),(173,'Waitress');

/*Table structure for table `materi` */

CREATE TABLE `materi` (
  `id_materi` int NOT NULL AUTO_INCREMENT,
  `id_pengisi_materi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_materi` int DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `konten` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `path_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'upload/materi',
  `file_materi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_materi` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tgl_posting` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `posted_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publish_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publish_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publish` int DEFAULT NULL,
  `views` int DEFAULT NULL,
  `delete` int DEFAULT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `materi` */

insert  into `materi`(`id_materi`,`id_pengisi_materi`,`jenis_materi`,`judul`,`konten`,`path_file`,`file_materi`,`link_materi`,`tgl_posting`,`posted_by`,`tgl_update`,`updated_by`,`publish_date`,`publish_by`,`publish`,`views`,`delete`) values (1,'3',NULL,'PEMBELAJARAN BARU','Mohon perhatian!\r\n\r\nDalam rangka memeriahkan Hari Ulang Tahun ke-25 SMP Bintang Gemilang, seluruh siswa sekolah diundang untuk mempersiapkan acara besar tersebut.\r\n\r\nAcara khusus akan diadakan pada tanggal 15 Maret 2023. Karena acara ini, seluruh siswa diminta untuk membersihkan seluruh ruang kelas serta lingkungan sekolah.\r\n\r\nSiswa juga diminta untuk mempersiapkan aula serta memasang dekorasi. Persiapan secara keseluruhan akan dipimpin oleh Ibu Kristianti Lestari.\r\n\r\nSemua anggota OSIS serta ketua kelas perlu menemui Bu Lestari untuk mendapatkan informasi lengkap.','upload/materi','IT_Idham Mansyah Awwalu_PAENDYEAR2023.pdf','https://drive.google.com','2024-03-21 13:55:18','idhammansyah','2024-03-25 16:22:49','Idham Mansyah Awwalu','2024-05-30 14:01:19','Idham Mansyah Awwalu',1,0,0),(2,'2',NULL,'Kegiatan Baksos','Official Announcement of the Indonesian Ministry of Health.\r\nIn order to help stop the virus&rsquo;s spread, the entire parts of society are required to wear face masks both in indoor and outdoor activity.<br />\r\n\r\nAlso, all people are required to keep their distance from the others for at least one meter. On all occasions, everyone is requested to always wash their hands with water and soap.<br />\r\n\r\nCleaning hands with sanitizer is also required after and before making contact with stuff and the others. Thank you.</em></p>\r\n','upload/materi','validdddd.jpeg','','2024-03-21 15:29:10','idhammansyah','2024-03-26 09:42:00','Idham Mansyah Awwalu','2024-05-30 14:01:33','Idham Mansyah Awwalu',0,0,0);

/*Table structure for table `tokenize` */

CREATE TABLE `tokenize` (
  `id_tokenize` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `informasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expired_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_tokenize`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tokenize` */

insert  into `tokenize`(`id_tokenize`,`email`,`token`,`status`,`informasi`,`created_at`,`expired_at`) values (1,'manager@merryrianagroup.com','f6ee0679698e2ee158c102e3da6eb7bc',0,'Aktivasi akun baru','2024-06-09 20:28:48',NULL),(2,'officer@merryrianagroup.com','135a436bc879e32393a95ecbe5c41aea',0,'Aktivasi akun baru','2024-06-09 20:32:21',NULL),(3,'finance@merryrianagroup.com','84186d64d708ddf726434c0607f79ca1',0,'Aktivasi akun baru','2024-06-09 20:34:26',NULL);

/*Table structure for table `user_log_activity` */

CREATE TABLE `user_log_activity` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `activity_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_log_activity` */

insert  into `user_log_activity`(`id_log`,`id_user`,`activity_user`,`created`) values (1,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-21 08:50:00 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-21 08:50:00'),(2,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-21 09:17:15 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-21 09:17:15'),(3,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-21 10:19:41 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-21 10:19:41'),(4,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-21 14:56:16 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-21 14:56:16'),(5,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-21 15:10:47 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-21 15:10:47'),(6,1,'idhammansyah melakukan logout pada 2024-03-21 16:34:22','2024-03-21 16:34:22'),(7,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-22 08:23:34 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-22 08:23:34'),(8,1,'idhammansyah melakukan logout pada 2024-03-22 10:19:27','2024-03-22 10:19:27'),(9,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-22 10:19:34 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-22 10:19:34'),(10,1,'idhammansyah melakukan logout pada 2024-03-22 11:35:05','2024-03-22 11:35:05'),(11,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-22 13:08:54 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-22 13:08:54'),(12,1,'idhammansyah melakukan logout pada 2024-03-22 16:32:28','2024-03-22 16:32:28'),(13,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-25 13:27:12 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-25 13:27:12'),(14,1,'idhammansyah melakukan logout pada 2024-03-25 13:30:16','2024-03-25 13:30:16'),(15,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-25 13:35:37 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-25 13:35:37'),(16,1,'idhammansyah melakukan logout pada 2024-03-25 15:37:30','2024-03-25 15:37:30'),(17,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-25 15:39:30 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-25 15:39:30'),(18,1,'idhammansyah melakukan logout pada 2024-03-25 15:46:01','2024-03-25 15:46:01'),(19,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-25 16:22:28 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-25 16:22:28'),(20,1,'idhammansyah melakukan logout pada 2024-03-25 16:23:37','2024-03-25 16:23:37'),(21,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-26 08:51:44 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-26 08:51:44'),(22,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-26 09:55:32 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-26 09:55:32'),(23,1,'idhammansyah melakukan logout pada 2024-03-26 09:56:31','2024-03-26 09:56:31'),(24,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-26 09:56:41 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-26 09:56:41'),(25,1,'idhammansyah melakukan logout pada 2024-03-26 09:58:20','2024-03-26 09:58:20'),(26,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-26 09:58:28 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-26 09:58:28'),(27,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-26 13:48:41 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-26 13:48:41'),(28,1,'idhammansyah melakukan logout pada 2024-03-26 13:50:44','2024-03-26 13:50:44'),(29,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-26 13:51:03 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-26 13:51:03'),(30,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-26 15:23:08 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-26 15:23:08'),(31,1,'Idham Mansyah Awwalu melakukan login pada 2024-03-28 14:37:09 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-03-28 14:37:09'),(32,1,'Idham Mansyah Awwalu melakukan login pada 2024-04-18 09:02:29 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-04-18 09:02:29'),(33,1,'idhammansyah melakukan logout pada 2024-04-18 17:31:55','2024-04-18 17:31:55'),(34,1,'Idham Mansyah Awwalu melakukan login pada 2024-04-19 08:53:59 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-04-19 08:53:59'),(35,1,'Idham Mansyah Awwalu melakukan login pada 2024-04-19 13:34:12 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-04-19 13:34:12'),(36,1,'Idham Mansyah Awwalu melakukan login pada 2024-04-22 09:14:54 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','2024-04-22 09:14:54'),(37,1,'Idham Mansyah Awwalu melakukan login pada 2024-04-29 09:16:32 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0','2024-04-29 09:16:32'),(38,1,'Idham Mansyah Awwalu melakukan login pada 2024-04-29 12:41:19 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0','2024-04-29 12:41:19'),(39,1,'Idham Mansyah Awwalu melakukan login pada 2024-04-30 11:32:44 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0','2024-04-30 11:32:44'),(40,1,'Idham Mansyah Awwalu melakukan login pada 2024-05-02 13:28:09 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0','2024-05-02 13:28:09'),(41,1,'idhammansyah melakukan logout pada 2024-05-02 15:46:02','2024-05-02 15:46:02'),(42,1,'Idham Mansyah Awwalu melakukan login pada 2024-05-30 13:48:51 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-05-30 13:48:51'),(43,1,'idhammansyah melakukan logout pada 2024-05-30 14:03:37','2024-05-30 14:03:37'),(44,1,'Idham Mansyah Awwalu melakukan login pada 2024-05-30 17:12:25 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-05-30 17:12:25'),(45,1,'Idham Mansyah Awwalu melakukan login pada 2024-06-07 21:15:03 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-07 21:15:03'),(46,1,'Idham Mansyah Awwalu melakukan login pada 2024-06-09 15:50:06 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 15:50:06'),(47,1,'Idham Mansyah Awwalu melakukan login pada 2024-06-09 19:39:11 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 19:39:11'),(48,7,'manager merry riana melakukan login pada 2024-06-09 20:36:19 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 20:36:19'),(49,7,'manager merry riana melakukan login pada 2024-06-09 20:40:36 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 20:40:36'),(50,7,'manager merry riana melakukan login pada 2024-06-09 20:41:45 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 20:41:45'),(51,8,'officer merry riana melakukan login pada 2024-06-09 20:46:18 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 20:46:18'),(52,8,'officer merry riana melakukan login pada 2024-06-09 20:48:26 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 20:48:26'),(53,8,'officer merry riana melakukan login pada 2024-06-09 20:51:18 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 20:51:18'),(54,8,'officer melakukan logout pada 2024-06-09 21:11:57','2024-06-09 21:11:57'),(55,1,'idhammansyah melakukan logout pada 2024-06-09 21:12:07','2024-06-09 21:12:07'),(56,8,'officer merry riana melakukan login pada 2024-06-09 21:13:40 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 21:13:40'),(57,8,'officer melakukan logout pada 2024-06-09 21:26:05','2024-06-09 21:26:05'),(58,7,'manager merry riana melakukan login pada 2024-06-09 21:26:14 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 21:26:14'),(59,8,'officer merry riana melakukan login pada 2024-06-09 21:48:29 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 21:48:29'),(60,8,'officer melakukan logout pada 2024-06-09 21:51:14','2024-06-09 21:51:14'),(61,7,'manager merry riana melakukan login pada 2024-06-09 21:51:24 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 21:51:24'),(62,7,'manager melakukan logout pada 2024-06-09 22:14:56','2024-06-09 22:14:56'),(63,8,'officer merry riana melakukan login pada 2024-06-09 22:15:04 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 22:15:04'),(64,7,'manager merry riana melakukan login pada 2024-06-09 22:16:39 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 22:16:39'),(65,8,'officer melakukan logout pada 2024-06-09 22:22:07','2024-06-09 22:22:07'),(66,8,'officer merry riana melakukan login pada 2024-06-09 22:22:15 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 22:22:15'),(67,7,'manager merry riana melakukan login pada 2024-06-09 22:51:52 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 22:51:52'),(68,8,'officer merry riana melakukan login pada 2024-06-09 22:52:05 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 22:52:05'),(69,8,'officer merry riana melakukan login pada 2024-06-09 22:53:48 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 22:53:48'),(70,8,'officer melakukan logout pada 2024-06-09 23:05:25','2024-06-09 23:05:25'),(71,9,'finance merry riana melakukan login pada 2024-06-09 23:05:32 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 23:05:32'),(72,9,'finance merry riana melakukan login pada 2024-06-09 23:06:13 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 23:06:13'),(73,9,'finance merry riana melakukan login pada 2024-06-09 23:06:24 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 23:06:24'),(74,7,'manager melakukan logout pada 2024-06-09 23:44:06','2024-06-09 23:44:06'),(75,7,'manager merry riana melakukan login pada 2024-06-09 23:44:13 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 23:44:13'),(76,9,'finance melakukan logout pada 2024-06-09 23:46:33','2024-06-09 23:46:33'),(77,8,'officer merry riana melakukan login pada 2024-06-09 23:46:54 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 23:46:54'),(78,7,'manager melakukan logout pada 2024-06-09 23:49:11','2024-06-09 23:49:11'),(79,9,'finance merry riana melakukan login pada 2024-06-09 23:49:21 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 23:49:21'),(80,9,'finance melakukan logout pada 2024-06-09 23:56:18','2024-06-09 23:56:18'),(81,7,'manager merry riana melakukan login pada 2024-06-09 23:56:47 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0','2024-06-09 23:56:47'),(82,8,'officer melakukan logout pada 2024-06-09 23:57:19','2024-06-09 23:57:19'),(83,1,'Idham Mansyah Awwalu melakukan login pada 2024-06-09 23:59:07 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-09 23:59:07'),(84,1,'idhammansyah melakukan logout pada 2024-06-09 23:59:40','2024-06-09 23:59:40'),(85,1,'Idham Mansyah Awwalu melakukan login pada 2024-06-10 10:23:32 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-10 10:23:32'),(86,1,'idhammansyah melakukan logout pada 2024-06-10 10:23:56','2024-06-10 10:23:56'),(87,1,'Idham Mansyah Awwalu melakukan login pada 2024-06-10 10:24:03 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-10 10:24:03'),(88,1,'idhammansyah melakukan logout pada 2024-06-10 10:24:10','2024-06-10 10:24:10'),(89,9,'finance merry riana melakukan login pada 2024-06-10 10:24:44 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-10 10:24:44'),(90,9,'finance melakukan logout pada 2024-06-10 10:24:48','2024-06-10 10:24:48'),(91,9,'finance merry riana melakukan login pada 2024-06-10 18:28:44 dan login menggunakan device Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','2024-06-10 18:28:44');

/*Table structure for table `user_menu` */

CREATE TABLE `user_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icons` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `posisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_role` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `urutan` int DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_menu` */

insert  into `user_menu`(`menu_id`,`menu_name`,`icons`,`url_link`,`posisi`,`id_role`,`is_active`,`urutan`) values (1,'Dashboard','bi bi-speedometer2','4/dashboard','sidebar',1,1,2),(2,'Settings','bi bi bi-gear','#','sidebar',1,1,1),(3,'View Jobs','bi bi-briefcase','#','sidebar',1,1,3),(4,'Learning Materials','bi bi-journals','#','sidebar',1,1,6),(5,'Events','bi bi-calendar3','#','sidebar',1,1,7),(6,'Attendance','bi bi-person-vcard-fill','#','sidebar',1,1,8),(7,'Profile','bi bi-person-circle','#','navbar',1,1,2),(8,'Status Applicant','bi bi-person-vcard-fill','#','sidebar',1,1,4),(9,'Notification','bi bi-bell-fill','#','navbar',1,1,1),(10,'Send Forms','bi bi-envelope','#','sidebar',1,1,5),(11,'Report','bi bi-file-arrow-up-fill','#','sidebar',1,1,9),(12,'Purchasing','bi bi-box-seam-fill','#','sidebar',1,1,10),(13,'Purchasing','bi bi-box-seam-fill','#','sidebar',7,1,1),(14,'Profile','bi bi-person-circle','#','navbar',7,1,1),(15,'Purchasing','bi bi-box-seam-fill','#','sidebar',5,1,1),(16,'Profile','bi bi-person-circle','#','navbar',5,1,1),(17,'Profile','bi bi-person-circle','#','navbar',6,1,1),(18,'Purchasing','bi bi-box-seam-fill','#','sidebar',6,1,1);

/*Table structure for table `user_role` */

CREATE TABLE `user_role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_role` */

insert  into `user_role`(`id_role`,`role_name`) values (1,'Super Admin'),(2,'Admin'),(3,'Employee'),(4,'Member'),(5,'Manager'),(6,'Finance'),(7,'Officer');

/*Table structure for table `user_sub_menu` */

CREATE TABLE `user_sub_menu` (
  `id_sub_menu` int NOT NULL AUTO_INCREMENT,
  `menu_id` int DEFAULT NULL,
  `id_role` int DEFAULT NULL,
  `url_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icons` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `urutan` int DEFAULT NULL,
  PRIMARY KEY (`id_sub_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_sub_menu` */

insert  into `user_sub_menu`(`id_sub_menu`,`menu_id`,`id_role`,`url_link`,`sub_menu_name`,`icons`,`is_active`,`urutan`) values (1,2,1,'4/view-users','View Users','bi bi-people-fill',1,10),(2,2,1,'4/company','Master Company','bi bi-building',1,1),(3,3,1,'4/view-job','View Jobs','bi bi-briefcase-fill',1,1),(4,2,1,'4/menu-management','Menu Management','bi bi-menu-app',1,8),(5,4,1,'4/view-learning-materials','View Learning Materials','bi bi-book-half',1,1),(6,5,1,'4/view-calendar','View Calendar','bi bi-calendar2-day',1,1),(7,6,1,'4/view-attendance','View Attendance','bi bi-card-checklist',1,1),(8,2,1,'4/setup-apps','Setup Apps','bi bi-window',1,9),(9,7,1,'4/my-profile','My Profile','bi bi-person',1,1),(10,7,1,'sign-out','Sign Out','bi bi-box-arrow-right',1,2),(11,2,1,'4/department','Master Department','bi bi-briefcase',1,2),(12,2,1,'4/position','Master Position','bi bi-person-video2',1,3),(13,8,1,'4/view-shortlist','Shortlist','bi bi-list-ol',1,1),(14,8,1,'4/interview','Interview','bi bi-chat-dots-fill',1,2),(15,8,1,'4/psychotest','Psychotest','bi bi-highlighter',1,3),(16,8,1,'4/hired','Hired','bi bi-person-check-fill',1,4),(17,8,1,'4/rejected','Rejected','bi bi-person-x-fill',1,5),(18,2,1,'4/location','Master Location','bi bi-geo-alt-fill',1,4),(19,10,1,'4/send-email','Send Email','bi bi-send-fill',1,1),(20,10,1,'4/request-applicant','Request Form Applicant','bi bi-person-square',1,2),(21,11,1,'4/report-to-pdf','Report to PDF','bi bi-filetype-pdf',1,1),(22,11,1,'4/report-to-excel','Report to XLS / XLXS','bi bi-filetype-xlsx',1,2),(23,4,1,'4/view-points','Point Attendance Learning','bi bi-check-square',1,2),(24,2,1,'4/role','Master Role','bi bi-people',1,7),(25,2,1,'4/job-level','Master Job Level','fa-solid fa-people-line',1,5),(26,2,1,'4/contracts','Master Contract','fa fa-file-signature',1,6),(27,12,1,'4/view-purchasing','View Purchasing Data','bi bi-box-seam',1,1),(28,13,7,'7/view-purchasings','View Purchasing Data','bi bi-box-seam',1,1),(29,14,7,'sign-out','Sign Out','bi bi-box-arrow-right',1,1),(30,16,5,'sign-out','Sign Out','bi bi-box-arrow-right',1,1),(31,15,5,'5/view-purchase','View Purchasing Data','bi bi-box-seam',1,1),(32,17,6,'sign-out','Sign Out','bi bi-box-arrow-right',1,1),(33,18,6,'6/view-purchasing-data','View Purchasing Data','bi bi-box-seam',1,1);

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'default.svg',
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` int DEFAULT '0',
  `status_akun` int DEFAULT '0',
  `company_id` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `status` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `role_id` int DEFAULT '0',
  `isLogin` int DEFAULT '0',
  `created_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_login` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `Index 2` (`email`),
  UNIQUE KEY `Index 3` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id_user`,`email`,`username`,`nama_lengkap`,`password_hash`,`avatar`,`tempat_lahir`,`tanggal_lahir`,`gender`,`status_akun`,`company_id`,`department_id`,`status`,`role_id`,`isLogin`,`created_at`,`reset_hash`,`reset_at`,`updated_at`,`last_login`) values (1,'mansyahidham@gmail.com','idhammansyah','Idham Mansyah Awwalu','$2y$10$w9cynMMwBCAGTrQJ2y8TjuhL3Ou3fNtovUd01GWFfRPGDz/xr0pz.','default.svg','Jakarta','1998-07-04',1,1,1,13,'verified',1,0,'2024-02-07 15:25:27','','2024-03-25 16:22:00',NULL,'2024-06-10 10:24:10'),(2,'it.dept@abhatigroup.com','itdept','IT Dept Abhati','$2y$10$w9cynMMwBCAGTrQJ2y8TjuhL3Ou3fNtovUd01GWFfRPGDz/xr0pz.','default.svg',NULL,NULL,1,1,1,13,'verified',2,0,'2024-02-07 15:26:59',NULL,NULL,NULL,NULL),(3,'idhammansyah@abhatigroup.com','idham_mansyah','Idham Mansyah','$2y$10$w9cynMMwBCAGTrQJ2y8TjuhL3Ou3fNtovUd01GWFfRPGDz/xr0pz.','default.svg',NULL,NULL,1,1,1,13,'verified',2,0,'2024-02-07 15:26:59',NULL,NULL,NULL,NULL),(6,'idham.mansyah@abhatigroup.com','damdamsit','Idham Mansyah','$2y$10$w9cynMMwBCAGTrQJ2y8TjuhL3Ou3fNtovUd01GWFfRPGDz/xr0pz.','default.svg',NULL,NULL,1,1,NULL,NULL,'verified',2,0,'2024-03-22 15:49:45',NULL,NULL,NULL,NULL),(7,'manager@merryrianagroup.com','manager','manager merry riana','$2y$10$gB4snf5L7Mdxvdm.LInyMeQIOat2zVH6uff9VEQFTyGmmfRb9gf1y','default.svg',NULL,NULL,1,1,14,13,'verified',5,1,'2024-06-09 20:28:48',NULL,NULL,NULL,'2024-06-09 23:56:47'),(8,'officer@merryrianagroup.com','officer','officer merry riana','$2y$10$Bs6bzV9aXfgSU1vdpC2Rn.cmBsYeBPz2Vq2P8QT6u.6jNOIQz2ZJG','default.svg',NULL,NULL,1,1,14,13,'verified',7,0,'2024-06-09 20:32:21',NULL,NULL,NULL,'2024-06-09 23:57:19'),(9,'finance@merryrianagroup.com','finance','finance merry riana','$2y$10$.8tYt2HNM4CEbU11iqQ3fOnlVMFeIL475/IjIrp.Y83HzqSiaZtC2','default.svg',NULL,NULL,1,1,14,4,'verified',6,1,'2024-06-09 20:34:26',NULL,NULL,NULL,'2024-06-10 18:28:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
