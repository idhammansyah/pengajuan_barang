/*
SQLyog Ultimate
MySQL - 8.0.30 : Database - coba_data
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`coba_data` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `coba_data`;

/*Table structure for table `events` */

CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `notes` text CHARACTER SET armscii8 COLLATE armscii8_bin,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

/*Data for the table `events` */

insert  into `events`(`id`,`title`,`notes`,`start_date`,`end_date`) values (1,'Isra Mi\'raj','Libur bersama','2024-02-08','0000-00-00'),(4,'ahayyy','cobain','2024-02-27','2024-02-27'),(5,'kepo kan','halooo','2024-02-28','2024-02-28'),(6,'nyobain','cobain','2024-03-05','2024-03-05'),(7,'Detik-detik bulan februari abis','Semangat guys','2024-02-29','2024-02-29');

/*Table structure for table `user_menu` */

CREATE TABLE `user_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icons` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `posisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `urutan` int DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_menu` */

insert  into `user_menu`(`menu_id`,`menu_name`,`icons`,`url_link`,`posisi`,`id_role`,`is_active`,`urutan`) values (1,'Dashboard','bi bi-speedometer2','4/dashboard','sidebar','1',1,2),(2,'Settings','bi bi bi-gear','#','sidebar','1',1,1),(3,'View','bi bi-search','#','sidebar','1',1,3);

/*Table structure for table `user_role` */

CREATE TABLE `user_role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_role` */

insert  into `user_role`(`id_role`,`role_name`) values (1,'Super Admin'),(2,'Admin'),(3,'Employee'),(4,'Member');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_sub_menu` */

insert  into `user_sub_menu`(`id_sub_menu`,`menu_id`,`id_role`,`url_link`,`sub_menu_name`,`icons`,`is_active`,`urutan`) values (1,2,1,'4/add-account','Add New Users','bi bi-person-plus-fill',1,1),(2,2,1,'4/add-company','Add New Company','bi bi-building',1,2),(3,3,1,'4/view-users','View Users','bi bi-people-fill',1,1),(4,2,1,'4/menu-management','Menu Management','bi bi-menu-app',1,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
