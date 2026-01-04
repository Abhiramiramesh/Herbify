-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2025 at 08:10 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `abc`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_login_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'login', 'product'),
(6, 'login', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-16 07:16:17.386329'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-09-16 07:16:17.517537'),
(3, 'auth', '0001_initial', '2025-09-16 07:16:17.895476'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-09-16 07:16:17.958510'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-09-16 07:16:17.965497'),
(6, 'auth', '0004_alter_user_username_opts', '2025-09-16 07:16:17.973106'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-09-16 07:16:17.981267'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-09-16 07:16:17.985246'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-09-16 07:16:17.995052'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-09-16 07:16:18.002114'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-09-16 07:16:18.009690'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-09-16 07:16:18.076698'),
(13, 'auth', '0011_update_proxy_permissions', '2025-09-16 07:16:18.083055'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-09-16 07:16:18.091808'),
(15, 'login', '0001_initial', '2025-09-16 07:16:18.527650'),
(16, 'admin', '0001_initial', '2025-09-16 07:16:18.711449'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-09-16 07:16:18.719307'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-16 07:16:18.731565'),
(19, 'sessions', '0001_initial', '2025-09-16 07:16:18.794866'),
(20, 'login', '0002_product', '2025-09-18 05:50:03.262682');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wcocvdl8mj1p19ckouhg67d25yggm5a8', '.eJxVjDkOwjAUBe_iGlnOx0tCSZ8zWH-xcQDZUpYKcXeIlALaNzPvpSJua4nbkuY4ibqozqnT70jIj1R3Inest6a51XWeSO-KPuiixybpeT3cv4OCS_nWHoxhyD0IGGd8YpZ8DogkHbjOAPmeAvNAAR2Jl4HBJsgJgmUS69X7Aw-jOK0:1v0wb3:GyARJcSLHPFtq70fO2jn1jGNzWatUHpw9H7PQLpDVwk', '2025-10-07 06:33:53.724674');

-- --------------------------------------------------------

--
-- Table structure for table `login_product`
--

CREATE TABLE IF NOT EXISTS `login_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE IF NOT EXISTS `login_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `profile`, `phoneno`) VALUES
(12, 'pbkdf2_sha256$260000$GL2h5SpjCKiTnujMTzbALg$TXVih6Gojvh20oFLM2e5yTPm3LYaVB+X5gnXc9KFkOA=', NULL, 0, 'aswathy', '', '', 'aswath12@gmail.com', 0, 1, '2025-09-19 07:23:54.042080', 'profile/id_card_dXJpqFh.jpg', '6233'),
(14, 'pbkdf2_sha256$260000$rrlAmkkd3wnCuyl3ZuGsKF$3p4ZYNOYVuvsoyn93Vggg8+eY9s/BDBZJa0FIJNwYUI=', '2025-09-22 07:15:20.631857', 0, 'abhirami b', '', '', 'abhiramiramesh97@gmail.com', 0, 1, '2025-09-19 07:31:44.683885', 'profile/Gemini_Generated_Image_5u84r5u84r5u84r5.png', '9744944'),
(15, 'pbkdf2_sha256$260000$ZWhQ37QMncfpD9dZ05XJZr$7db2PauDCpECh0eO1+zoAPqZINeNxV0sjiJD5KBrrfE=', '2025-09-23 06:33:53.700372', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-09-23 06:09:14.632483', '', ''),
(16, 'pbkdf2_sha256$260000$v3WTw2sxR3iDg4hf5OWcjt$Nx9BgAUJGrWiB93ERvVOgp1vBQ+OYX78oba8Qw+PXGk=', '2025-10-06 07:26:37.646352', 0, 'amina', '', '', 'amina123@gmail.com', 0, 1, '2025-10-06 06:21:57.251178', 'profile/grapes.jpeg', '6233');

-- --------------------------------------------------------

--
-- Table structure for table `login_user_groups`
--

CREATE TABLE IF NOT EXISTS `login_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_user_groups_user_id_group_id_e039d177_uniq` (`user_id`,`group_id`),
  KEY `login_user_groups_group_id_a8810f0d_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `login_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_user_user_permissions_user_id_permission_id_a985464b_uniq` (`user_id`,`permission_id`),
  KEY `login_user_user_perm_permission_id_08d04f9c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`);

--
-- Constraints for table `login_user_groups`
--
ALTER TABLE `login_user_groups`
  ADD CONSTRAINT `login_user_groups_group_id_a8810f0d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `login_user_groups_user_id_f6fabf84_fk_login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`);

--
-- Constraints for table `login_user_user_permissions`
--
ALTER TABLE `login_user_user_permissions`
  ADD CONSTRAINT `login_user_user_permissions_user_id_2a4ce843_fk_login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`),
  ADD CONSTRAINT `login_user_user_perm_permission_id_08d04f9c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
--
-- Database: `abcd`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_login_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'login', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-10-15 06:22:11.621889'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-10-15 06:22:11.754742'),
(3, 'auth', '0001_initial', '2025-10-15 06:22:12.095510'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-10-15 06:22:12.166560'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-10-15 06:22:12.173881'),
(6, 'auth', '0004_alter_user_username_opts', '2025-10-15 06:22:12.182097'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-10-15 06:22:12.188632'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-10-15 06:22:12.192951'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-10-15 06:22:12.202158'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-10-15 06:22:12.209148'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-10-15 06:22:12.218109'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-10-15 06:22:12.270949'),
(13, 'auth', '0011_update_proxy_permissions', '2025-10-15 06:22:12.277253'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-10-15 06:22:12.284359'),
(15, 'login', '0001_initial', '2025-10-15 06:22:12.678279'),
(16, 'admin', '0001_initial', '2025-10-15 06:22:12.868136'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-10-15 06:22:12.877760'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-10-15 06:22:12.891910'),
(19, 'sessions', '0001_initial', '2025-10-15 06:22:12.957131');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE IF NOT EXISTS `login_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_user_groups`
--

CREATE TABLE IF NOT EXISTS `login_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_user_groups_user_id_group_id_e039d177_uniq` (`user_id`,`group_id`),
  KEY `login_user_groups_group_id_a8810f0d_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `login_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_user_user_permissions_user_id_permission_id_a985464b_uniq` (`user_id`,`permission_id`),
  KEY `login_user_user_perm_permission_id_08d04f9c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`);

--
-- Constraints for table `login_user_groups`
--
ALTER TABLE `login_user_groups`
  ADD CONSTRAINT `login_user_groups_group_id_a8810f0d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `login_user_groups_user_id_f6fabf84_fk_login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`);

--
-- Constraints for table `login_user_user_permissions`
--
ALTER TABLE `login_user_user_permissions`
  ADD CONSTRAINT `login_user_user_permissions_user_id_2a4ce843_fk_login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`),
  ADD CONSTRAINT `login_user_user_perm_permission_id_08d04f9c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `furn`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add carpenter', 8, 'add_carpenter'),
(30, 'Can change carpenter', 8, 'change_carpenter'),
(31, 'Can delete carpenter', 8, 'delete_carpenter'),
(32, 'Can view carpenter', 8, 'view_carpenter'),
(33, 'Can add customisedproduct', 9, 'add_customisedproduct'),
(34, 'Can change customisedproduct', 9, 'change_customisedproduct'),
(35, 'Can delete customisedproduct', 9, 'delete_customisedproduct'),
(36, 'Can view customisedproduct', 9, 'view_customisedproduct'),
(37, 'Can add colour', 10, 'add_colour'),
(38, 'Can change colour', 10, 'change_colour'),
(39, 'Can delete colour', 10, 'delete_colour'),
(40, 'Can view colour', 10, 'view_colour'),
(41, 'Can add wood', 11, 'add_wood'),
(42, 'Can change wood', 11, 'change_wood'),
(43, 'Can delete wood', 11, 'delete_wood'),
(44, 'Can view wood', 11, 'view_wood'),
(45, 'Can add category', 12, 'add_category'),
(46, 'Can change category', 12, 'change_category'),
(47, 'Can delete category', 12, 'delete_category'),
(48, 'Can view category', 12, 'view_category'),
(49, 'Can add customisedorder', 13, 'add_customisedorder'),
(50, 'Can change customisedorder', 13, 'change_customisedorder'),
(51, 'Can delete customisedorder', 13, 'delete_customisedorder'),
(52, 'Can view customisedorder', 13, 'view_customisedorder'),
(53, 'Can add cartitem', 14, 'add_cartitem'),
(54, 'Can change cartitem', 14, 'change_cartitem'),
(55, 'Can delete cartitem', 14, 'delete_cartitem'),
(56, 'Can view cartitem', 14, 'view_cartitem'),
(57, 'Can add payment', 15, 'add_payment'),
(58, 'Can change payment', 15, 'change_payment'),
(59, 'Can delete payment', 15, 'delete_payment'),
(60, 'Can view payment', 15, 'view_payment'),
(61, 'Can add productorder', 16, 'add_productorder'),
(62, 'Can change productorder', 16, 'change_productorder'),
(63, 'Can delete productorder', 16, 'delete_productorder'),
(64, 'Can view productorder', 16, 'view_productorder');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(8, 'login', 'carpenter'),
(14, 'login', 'cartitem'),
(12, 'login', 'category'),
(10, 'login', 'colour'),
(13, 'login', 'customisedorder'),
(9, 'login', 'customisedproduct'),
(15, 'login', 'payment'),
(7, 'login', 'product'),
(16, 'login', 'productorder'),
(6, 'login', 'user'),
(11, 'login', 'wood'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-10-17 06:00:38.806656'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-10-17 06:00:38.916622'),
(3, 'auth', '0001_initial', '2025-10-17 06:00:39.300298'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-10-17 06:00:39.369603'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-10-17 06:00:39.376821'),
(6, 'auth', '0004_alter_user_username_opts', '2025-10-17 06:00:39.384252'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-10-17 06:00:39.393664'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-10-17 06:00:39.398785'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-10-17 06:00:39.407964'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-10-17 06:00:39.414948'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-10-17 06:00:39.423939'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-10-17 06:00:39.489681'),
(13, 'auth', '0011_update_proxy_permissions', '2025-10-17 06:00:39.496928'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-10-17 06:00:39.505601'),
(15, 'login', '0001_initial', '2025-10-17 06:00:39.959304'),
(16, 'admin', '0001_initial', '2025-10-17 06:00:40.162217'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-10-17 06:00:40.172236'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-10-17 06:00:40.184893'),
(19, 'sessions', '0001_initial', '2025-10-17 06:00:40.258273'),
(20, 'login', '0002_product', '2025-10-17 06:23:20.667217'),
(21, 'login', '0003_user_carpenter', '2025-10-20 15:35:02.341662'),
(22, 'login', '0004_auto_20251020_2219', '2025-10-20 16:49:12.613130'),
(23, 'login', '0005_customisedproduct', '2025-10-22 05:07:47.461933'),
(24, 'login', '0006_auto_20251023_1131', '2025-10-23 06:01:24.406618'),
(25, 'login', '0007_rename_colorname_colour_colourname', '2025-10-23 06:09:48.932775'),
(26, 'login', '0008_wood', '2025-10-23 06:26:40.860597'),
(27, 'login', '0009_category', '2025-10-23 06:58:15.429781'),
(28, 'login', '0010_auto_20251029_1726', '2025-10-29 11:56:44.725521'),
(29, 'login', '0011_auto_20251030_1252', '2025-10-30 07:23:05.627688'),
(30, 'login', '0012_cartitem', '2025-11-03 06:26:38.411440'),
(31, 'login', '0013_alter_product_productprice', '2025-11-03 07:02:17.680255'),
(32, 'login', '0014_alter_product_productprice', '2025-11-03 07:02:17.687258'),
(33, 'login', '0015_alter_product_productprice', '2025-11-03 07:02:17.735654'),
(34, 'login', '0016_payment', '2025-11-04 05:24:07.417225'),
(35, 'login', '0017_productorder', '2025-11-05 05:54:29.304829');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('88gh4dnbeysw9iwqh7qmpks3uu9a5gsb', '.eJxVjMsOwiAQRf-FtSFleExx6d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZnAeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvbUb2WnsDSGjsoBygVkxsHDow0UMuaKlQJFKRnbWUSWsdoQx2TFjE-wO9kTec:1vEKp6:8mTy0haTGqG44QZXLkZUca__Upn7xzF2nGiRvn-nCY8', '2025-11-13 05:03:44.292625'),
('e5u601f0y9zruut0p6taky3u8n6dsimd', '.eJxVjDsOwjAQBe_iGlkx618o6XMGa71r4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEmcVFKBCn3zEiPVLdCd-x3pqkVtdljnJX5EG7nBqn5_Vw_w4K9vKt3eiVZo1oDHHO0bCzmtUQI9A5s_GYEpMdPAJQtjR6AOUieQKjHHjx_gAonzib:1vGXv5:FG_E2HmF9ZDkuJAGu83QqsloXWOAAJLIVZZRvgz-tOw', '2025-11-19 07:27:03.635091');

-- --------------------------------------------------------

--
-- Table structure for table `login_cartitem`
--

CREATE TABLE IF NOT EXISTS `login_cartitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) unsigned NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `login_cartitem_product_id_f136ef92_fk_login_product_id` (`product_id`),
  KEY `login_cartitem_user_id_32899d88_fk_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `login_cartitem`
--

INSERT INTO `login_cartitem` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(29, 1, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `login_category`
--

CREATE TABLE IF NOT EXISTS `login_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login_category`
--

INSERT INTO `login_category` (`id`, `category`, `price`, `image`) VALUES
(1, 'chairs', '3500.00', 'profile/chair.jpeg'),
(2, 'sofas', '8400.00', 'profile/sofa.jpg'),
(3, 'beds', '13500.00', 'profile/bed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login_colour`
--

CREATE TABLE IF NOT EXISTS `login_colour` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `colourname` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login_colour`
--

INSERT INTO `login_colour` (`id`, `colourname`, `price`, `image`) VALUES
(1, 'red', '1000.00', 'profile/red_lM0Q1FZ.jpeg'),
(2, 'yellow', '1100.00', 'profile/yellow.jpeg'),
(3, 'pink', '1200.00', 'profile/pink.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `login_customisedorder`
--

CREATE TABLE IF NOT EXISTS `login_customisedorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total_price` decimal(10,2) NOT NULL,
  `ordered_at` datetime(6) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `colour_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `wood_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `login_customisedorder_category_id_a609ddf4_fk_login_category_id` (`category_id`),
  KEY `login_customisedorder_colour_id_fd1c3c45_fk_login_colour_id` (`colour_id`),
  KEY `login_customisedorder_user_id_8316f079_fk_user_id` (`user_id`),
  KEY `login_customisedorder_wood_id_35167d53_fk_login_wood_id` (`wood_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login_customisedorder`
--

INSERT INTO `login_customisedorder` (`id`, `total_price`, `ordered_at`, `category_id`, `colour_id`, `user_id`, `wood_id`) VALUES
(1, '8700.00', '2025-10-30 07:23:31.883323', 1, 1, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_payment`
--

CREATE TABLE IF NOT EXISTS `login_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cardholder_name` varchar(100) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiry_date` varchar(5) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paid_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `login_payment_user_id_ed99f952_fk_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `login_payment`
--

INSERT INTO `login_payment` (`id`, `cardholder_name`, `card_number`, `expiry_date`, `cvv`, `amount`, `paid_at`, `user_id`) VALUES
(1, 'abhirami b', '1234567898765432', '6/27', '789', '2000.00', '2025-11-04 06:02:50.269291', 12),
(2, 'abhirami b', '1234567898765432', '06/27', '123', '1200.00', '2025-11-04 06:04:24.405192', 12),
(3, 'abhirami b', '1234567898765432', '06/27', '123', '800.00', '2025-11-04 06:05:33.386900', 12),
(4, 'abhirami b', '1234567898765432', '08/27', '123', '2000.00', '2025-11-04 06:07:41.591989', 12),
(5, 'abhirami b', '1234566789876655', '09/28', '234', '1000.00', '2025-11-04 06:24:15.578873', 12),
(6, 'abhirami b', '1245343215667889', '07/29', '345', '1200.00', '2025-11-04 06:27:15.999024', 12),
(7, 'abhirami b', '1234567898765432', '09/28', '456', '1200.00', '2025-11-04 06:28:25.666794', 12),
(8, 'abhirami b', '1235687904221567', '08/32', '123', '1200.00', '2025-11-04 06:32:16.714347', 12),
(9, 'abhirami b', '1232135765432108', '09/29', '234', '1000.00', '2025-11-04 06:35:14.959301', 12),
(10, 'abhirami b', '9876543211234567', '12/30', '987', '3000.00', '2025-11-04 06:36:55.594915', 12),
(11, 'abhirami b', '9876534577890001', '09/29', '453', '800.00', '2025-11-04 06:43:03.016475', 12),
(12, 'abhirami b', '9876534577890001', '09/29', '123', '0.00', '2025-11-04 06:43:25.685309', 12),
(13, 'abhirami b', '3471230983456000', '09/27', '396', '1200.00', '2025-11-04 06:43:57.559456', 12),
(14, 'abhirami b', '6543218907654322', '09/29', '567', '1000.00', '2025-11-04 06:45:15.422608', 12),
(15, 'abhirami b', '1234567890987665', '09/28', '876', '2000.00', '2025-11-04 06:53:18.945053', 12),
(16, 'abhirami b', '9876543210000001', '09/29', '456', '2200.00', '2025-11-04 06:54:30.909662', 12),
(17, 'abhirami b', '8765432123400089', '11/30', '675', '2200.00', '2025-11-04 06:55:47.632420', 12),
(18, 'abhirami b', '9087023456780010', '11/29', '987', '2200.00', '2025-11-04 06:56:54.039220', 12),
(19, 'abhirami b', '2345678908544322', '09/30', '765', '1200.00', '2025-11-05 06:19:54.494842', 12),
(20, 'abhirami b', '1234556678990009', '09/28', '879', '1200.00', '2025-11-05 06:36:58.794765', 12);

-- --------------------------------------------------------

--
-- Table structure for table `login_product`
--

CREATE TABLE IF NOT EXISTS `login_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productname` varchar(100) DEFAULT NULL,
  `productprice` decimal(10,2) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login_product`
--

INSERT INTO `login_product` (`id`, `productname`, `productprice`, `profile`) VALUES
(1, NULL, '1200.00', 'profile/f1.jpeg'),
(3, NULL, '1000.00', 'profile/f3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `login_productorder`
--

CREATE TABLE IF NOT EXISTS `login_productorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) unsigned NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `ordered_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `login_productorder_product_id_971e1580_fk_login_product_id` (`product_id`),
  KEY `login_productorder_user_id_9e133935_fk_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login_productorder`
--

INSERT INTO `login_productorder` (`id`, `quantity`, `total_price`, `ordered_at`, `product_id`, `user_id`) VALUES
(1, 1, '1200.00', '2025-11-05 06:36:58.798194', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `login_wood`
--

CREATE TABLE IF NOT EXISTS `login_wood` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woodtype` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login_wood`
--

INSERT INTO `login_wood` (`id`, `woodtype`, `price`, `image`) VALUES
(1, 'mahogany', '4200.00', 'profile/mahogany.jpeg'),
(2, 'oak', '5000.00', 'profile/oak.jpeg'),
(3, 'pine', '3500.00', 'profile/pine.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `profile` varchar(100) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `phone`, `fullname`, `profile`, `role`) VALUES
(1, 'pbkdf2_sha256$260000$lEDdgdQlAqvsnyO3GQDQkg$xRIy6EpMRfFPA1eZGbxkRIwsdXTUAmeRscwFTAgJORQ=', '2025-10-30 07:02:53.483360', 0, '', '', 0, 1, '2025-10-17 06:07:12.787500', 'abhiramiramesh97@gmail.com', '9744', 'abhirami', 'profile/Gemini_Generated_Image_5u84r5u84r5u84r5.png', NULL),
(9, 'pbkdf2_sha256$260000$sGHaXyiV2jYmrOjwjc960a$d0xeDooKl8jrrVj+DZBmfmUdAf6am0LpSsCf7sUK9Zo=', NULL, 0, '', '', 0, 1, '2025-10-22 06:48:46.714168', 'sudhish1@gmail.com', '9875670975', 'sudhish', '', 'carpenter'),
(10, 'pbkdf2_sha256$260000$ZGhFaZ3sunren8osrQYP78$a0Qt/gvmlo1g7EJF8FsKEHWsK6Eb7WMkhaPAXGHhkao=', '2025-11-05 07:11:44.322371', 0, '', '', 0, 1, '2025-10-22 06:49:05.696138', 'rupesh2@gmail.com', '6780', 'rupesh', '', 'carpenter'),
(11, 'pbkdf2_sha256$260000$oMzGbG4c5IrPcY5DqXUaQi$dTqPcb4x2VtaznbSkR9RkueBfXXx2vIaxrWQn+b2Kvk=', NULL, 0, '', '', 0, 1, '2025-10-22 06:49:35.634422', 'akshay3@gmail.com', '76545', 'akshay', '', 'carpenter'),
(12, 'pbkdf2_sha256$260000$3LGcmHpolb3kPDzHx0ZB6S$8S7OCLiV2KkKEeAJWMSyDfC/rSH3d4p7J6/3aP/FfYc=', '2025-11-05 07:24:55.309300', 0, '', '', 0, 1, '2025-10-30 05:05:25.673437', 'aswini123@gmail.com', '1234', 'aswini', 'profile/Gemini_Generated_Image_k8lf1dk8lf1dk8lf.png', 'customer'),
(13, 'pbkdf2_sha256$260000$9NcB3FzLxTAodqjE2cw6TL$zfDm9+KM15bru7/6yKGLSbHQ8jotsU3DuIyHY4nddxg=', '2025-11-05 07:27:03.627467', 1, '', '', 1, 1, '2025-11-05 07:26:37.721027', 'admin123@gmail.com', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_groups_user_id_group_id_40beef00_uniq` (`user_id`,`group_id`),
  KEY `user_groups_group_id_b76f8aba_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_permissions_user_id_permission_id_7dc6e2e0_uniq` (`user_id`,`permission_id`),
  KEY `user_user_permission_permission_id_9deb68a3_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `login_cartitem`
--
ALTER TABLE `login_cartitem`
  ADD CONSTRAINT `login_cartitem_product_id_f136ef92_fk_login_product_id` FOREIGN KEY (`product_id`) REFERENCES `login_product` (`id`),
  ADD CONSTRAINT `login_cartitem_user_id_32899d88_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `login_customisedorder`
--
ALTER TABLE `login_customisedorder`
  ADD CONSTRAINT `login_customisedorder_category_id_a609ddf4_fk_login_category_id` FOREIGN KEY (`category_id`) REFERENCES `login_category` (`id`),
  ADD CONSTRAINT `login_customisedorder_colour_id_fd1c3c45_fk_login_colour_id` FOREIGN KEY (`colour_id`) REFERENCES `login_colour` (`id`),
  ADD CONSTRAINT `login_customisedorder_user_id_8316f079_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `login_customisedorder_wood_id_35167d53_fk_login_wood_id` FOREIGN KEY (`wood_id`) REFERENCES `login_wood` (`id`);

--
-- Constraints for table `login_payment`
--
ALTER TABLE `login_payment`
  ADD CONSTRAINT `login_payment_user_id_ed99f952_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `login_productorder`
--
ALTER TABLE `login_productorder`
  ADD CONSTRAINT `login_productorder_product_id_971e1580_fk_login_product_id` FOREIGN KEY (`product_id`) REFERENCES `login_product` (`id`),
  ADD CONSTRAINT `login_productorder_user_id_9e133935_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_group_id_b76f8aba_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_groups_user_id_abaea130_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_user_permissions`
--
ALTER TABLE `user_user_permissions`
  ADD CONSTRAINT `user_user_permissions_user_id_ed4a47ea_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_user_permission_permission_id_9deb68a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
--
-- Database: `hello`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_new_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'new', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-24 11:18:03.745826'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-09-24 11:18:03.880963'),
(3, 'auth', '0001_initial', '2025-09-24 11:18:04.318646'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-09-24 11:18:04.387551'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-09-24 11:18:04.394724'),
(6, 'auth', '0004_alter_user_username_opts', '2025-09-24 11:18:04.406007'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-09-24 11:18:04.412389'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-09-24 11:18:04.417703'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-09-24 11:18:04.427316'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-09-24 11:18:04.437763'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-09-24 11:18:04.444625'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-09-24 11:18:04.522130'),
(13, 'auth', '0011_update_proxy_permissions', '2025-09-24 11:18:04.532664'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-09-24 11:18:04.541763'),
(15, 'new', '0001_initial', '2025-09-24 11:18:05.126125'),
(16, 'admin', '0001_initial', '2025-09-24 11:18:05.379105'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-09-24 11:18:05.397331'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-24 11:18:05.413420'),
(19, 'sessions', '0001_initial', '2025-09-24 11:18:05.505030');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('z20k3pus7kthyejcmj3yl7a2i08vjm26', '.eJxVjDkOwjAUBe_iGlmO45WSnjNEf7FxANlSnFSIu0OkFNC-mXkvMcG2lmnraZlmFmcRxOl3Q6BHqjvgO9Rbk9Tquswod0UetMtr4_S8HO7fQYFevrXNhkGTJhOsNpzVoHL2ia0anCUEdkg-xzEiRw8wBI3esR6ZFAajk3h_AP8JOI8:1v1STa:v5jHze3DHt1s_OaIPaEa4PYViiYO1px3WTE5C2wD_XM', '2025-10-08 16:36:18.127514');

-- --------------------------------------------------------

--
-- Table structure for table `new_user`
--

CREATE TABLE IF NOT EXISTS `new_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `new_user`
--

INSERT INTO `new_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `phoneno`, `profile`) VALUES
(8, 'pbkdf2_sha256$260000$MshfQ8OnCxutPl2UBwzDYV$DxosKH/cX0ek+HczUVaMAxZn/HBmSMJaDe98rDk0mGM=', '2025-09-24 16:36:18.124702', 1, 'admin', '', '', 'admin123@gmail.com', 1, 1, '2025-09-24 16:18:30.605587', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `new_user_groups`
--

CREATE TABLE IF NOT EXISTS `new_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `new_user_groups_user_id_group_id_a61551a6_uniq` (`user_id`,`group_id`),
  KEY `new_user_groups_group_id_e7605d00_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `new_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `new_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `new_user_user_permissions_user_id_permission_id_8acc164b_uniq` (`user_id`,`permission_id`),
  KEY `new_user_user_permis_permission_id_925ba394_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_new_user_id` FOREIGN KEY (`user_id`) REFERENCES `new_user` (`id`);

--
-- Constraints for table `new_user_groups`
--
ALTER TABLE `new_user_groups`
  ADD CONSTRAINT `new_user_groups_group_id_e7605d00_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `new_user_groups_user_id_3d1f8c00_fk_new_user_id` FOREIGN KEY (`user_id`) REFERENCES `new_user` (`id`);

--
-- Constraints for table `new_user_user_permissions`
--
ALTER TABLE `new_user_user_permissions`
  ADD CONSTRAINT `new_user_user_permissions_user_id_5786269b_fk_new_user_id` FOREIGN KEY (`user_id`) REFERENCES `new_user` (`id`),
  ADD CONSTRAINT `new_user_user_permis_permission_id_925ba394_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
--
-- Database: `herb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add details', 8, 'add_details'),
(30, 'Can change details', 8, 'change_details'),
(31, 'Can delete details', 8, 'delete_details'),
(32, 'Can view details', 8, 'view_details'),
(33, 'Can add cartitem', 9, 'add_cartitem'),
(34, 'Can change cartitem', 9, 'change_cartitem'),
(35, 'Can delete cartitem', 9, 'delete_cartitem'),
(36, 'Can view cartitem', 9, 'view_cartitem'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add productorder', 11, 'add_productorder'),
(42, 'Can change productorder', 11, 'change_productorder'),
(43, 'Can delete productorder', 11, 'delete_productorder'),
(44, 'Can view productorder', 11, 'view_productorder'),
(45, 'Can add product2', 12, 'add_product2'),
(46, 'Can change product2', 12, 'change_product2'),
(47, 'Can delete product2', 12, 'delete_product2'),
(48, 'Can view product2', 12, 'view_product2'),
(49, 'Can add cartitem2', 13, 'add_cartitem2'),
(50, 'Can change cartitem2', 13, 'change_cartitem2'),
(51, 'Can delete cartitem2', 13, 'delete_cartitem2'),
(52, 'Can view cartitem2', 13, 'view_cartitem2'),
(53, 'Can add order', 14, 'add_order'),
(54, 'Can change order', 14, 'change_order'),
(55, 'Can delete order', 14, 'delete_order'),
(56, 'Can view order', 14, 'view_order'),
(57, 'Can add tutorial', 15, 'add_tutorial'),
(58, 'Can change tutorial', 15, 'change_tutorial'),
(59, 'Can delete tutorial', 15, 'delete_tutorial'),
(60, 'Can view tutorial', 15, 'view_tutorial');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(9, 'herbs', 'cartitem'),
(13, 'herbs', 'cartitem2'),
(8, 'herbs', 'details'),
(14, 'herbs', 'order'),
(10, 'herbs', 'payment'),
(7, 'herbs', 'product'),
(12, 'herbs', 'product2'),
(11, 'herbs', 'productorder'),
(15, 'herbs', 'tutorial'),
(6, 'herbs', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-11-06 07:09:56.427501'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-11-06 07:09:56.586318'),
(3, 'auth', '0001_initial', '2025-11-06 07:09:57.093217'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-11-06 07:09:57.173012'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-11-06 07:09:57.182647'),
(6, 'auth', '0004_alter_user_username_opts', '2025-11-06 07:09:57.191819'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-11-06 07:09:57.200148'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-11-06 07:09:57.207702'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-11-06 07:09:57.216713'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-11-06 07:09:57.227505'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-11-06 07:09:57.235018'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-11-06 07:09:57.314736'),
(13, 'auth', '0011_update_proxy_permissions', '2025-11-06 07:09:57.323597'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-11-06 07:09:57.332178'),
(15, 'herbs', '0001_initial', '2025-11-06 07:09:57.924856'),
(16, 'admin', '0001_initial', '2025-11-06 07:09:58.130201'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-11-06 07:09:58.145977'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-11-06 07:09:58.163160'),
(19, 'sessions', '0001_initial', '2025-11-06 07:09:58.267090'),
(20, 'herbs', '0002_product', '2025-11-10 08:27:41.732467'),
(21, 'herbs', '0003_alter_product_image', '2025-11-11 02:41:03.652989'),
(22, 'herbs', '0004_details', '2025-11-11 05:53:43.812571'),
(23, 'herbs', '0005_remove_details_price', '2025-11-11 06:16:47.439231'),
(24, 'herbs', '0006_cartitem', '2025-11-11 06:40:56.595568'),
(25, 'herbs', '0007_payment', '2025-11-11 07:12:20.663878'),
(26, 'herbs', '0008_productorder', '2025-11-11 10:03:03.722023'),
(27, 'herbs', '0009_product2', '2025-11-17 06:14:49.608408'),
(28, 'herbs', '0010_cartitem2', '2025-11-17 06:48:16.705789'),
(29, 'herbs', '0011_alter_cartitem2_product', '2025-11-18 14:31:55.657309'),
(30, 'herbs', '0012_order', '2025-11-18 15:35:33.833560'),
(31, 'herbs', '0013_tutorial', '2025-11-20 06:36:03.889976');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `herbs_cartitem`
--

CREATE TABLE IF NOT EXISTS `herbs_cartitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) unsigned NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `herbs_cartitem_product_id_0a2de65f_fk_herbs_product_id` (`product_id`),
  KEY `herbs_cartitem_user_id_efad0768_fk_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `herbs_cartitem`
--

INSERT INTO `herbs_cartitem` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(9, 1, 7, 3),
(10, 1, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `herbs_cartitem2`
--

CREATE TABLE IF NOT EXISTS `herbs_cartitem2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) unsigned NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `herbs_cartitem2_user_id_5f499ceb_fk_user_id` (`user_id`),
  KEY `herbs_cartitem2_product_id_149b2fd5_fk_herbs_product2_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `herbs_cartitem2`
--

INSERT INTO `herbs_cartitem2` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(6, 1, 1, 9),
(7, 1, 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `herbs_details`
--

CREATE TABLE IF NOT EXISTS `herbs_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `herbs_details`
--

INSERT INTO `herbs_details` (`id`, `name`, `description`, `image`) VALUES
(1, 'Ashwagandha', 'Ashwagandha (Withania somnifera) is a traditional Ayurvedic herb known for its health benefits. It helps reduce stress and anxiety by acting as a natural adaptogen. The herb also boosts immunity and increases energy and stamina. Additionally, it supports brain function and overall well-being.', 'profile/ashwa_k2SmMMO.png'),
(2, 'Ashwagandha', 'Ashwagandha (Withania somnifera) is a traditional Ayurvedic herb known for its health benefits. It helps reduce stress and anxiety by acting as a natural adaptogen. The herb also boosts immunity and increases energy and stamina. Additionally, it supports brain function and overall well-being.', 'profile/ashwa_YuN6r5o.png'),
(3, 'peppermint', 'Peppermint (Mentha × piperita) is a hybrid herb, a cross between watermint and spearmint, known for its refreshing aroma and cooling effect. It helps soothe digestion, relieve headaches, and reduce nausea. Peppermint also has antibacterial properties and can freshen breath. It is commonly used in teas, oils, and flavorings.', 'profile/peppermint_b4uYSCg.jpg'),
(4, 'Rosemarry', 'Rosemary (Rosmarinus officinalis) is an aromatic herb commonly used in cooking and traditional medicine. It helps improve memory and concentration, boosts digestion, and has anti-inflammatory properties. Rosemary also supports hair and skin health. It is often used fresh, dried, or as an essential oil.', 'profile/Rosemary_zcigScQ.jpg'),
(5, 'Aloe vera', 'Aloe Vera (Aloe barbadensis miller) is a succulent plant known for its soothing and healing properties. It helps moisturize the skin, heal minor burns, and support digestion. Aloe vera also has anti-inflammatory and antioxidant benefits. It is commonly used in gels, juices, and skincare products.', 'profile/aloe_eJicnge.jpeg'),
(6, 'chamomile', 'Chamomile (Matricaria chamomilla) is a gentle herb known for its calming and soothing properties. It helps reduce stress, promote better sleep, and aid digestion. Chamomile also has anti-inflammatory and antioxidant effects. It is commonly consumed as tea or used in skincare products.', 'profile/chamomile_CCRHm6S.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `herbs_order`
--

CREATE TABLE IF NOT EXISTS `herbs_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product` varchar(200) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `status` varchar(20) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `herbs_order_user_id_cab2d30a_fk_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `herbs_order`
--

INSERT INTO `herbs_order` (`id`, `product`, `quantity`, `status`, `order_date`, `user_id`) VALUES
(1, 'Rosemarry', 1, 'Processing', '2025-11-20 05:15:54.317146', 12);

-- --------------------------------------------------------

--
-- Table structure for table `herbs_payment`
--

CREATE TABLE IF NOT EXISTS `herbs_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cardholder_name` varchar(100) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiry_date` varchar(5) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paid_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `herbs_payment_user_id_fbdf358f_fk_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `herbs_payment`
--

INSERT INTO `herbs_payment` (`id`, `cardholder_name`, `card_number`, `expiry_date`, `cvv`, `amount`, `paid_at`, `user_id`) VALUES
(1, 'abhirami ', '1234556778899098', '09/30', '654', '760.00', '2025-11-11 08:52:28.732104', 3),
(2, 'abhirami ', '1234556778899098', '09/30', '654', '0.00', '2025-11-11 08:57:06.318993', 3),
(3, 'abhirami ', '1234556778899098', '09/30', '654', '0.00', '2025-11-11 08:58:44.700677', 3),
(4, 'abhirami ', '1234556778899098', '09/30', '654', '0.00', '2025-11-11 09:02:23.940955', 3),
(5, 'abhirami ', '1234556778899098', '09/30', '654', '0.00', '2025-11-11 09:02:45.971318', 3),
(6, 'abhirami ', '1234567890987653', '11/32', '345', '120.00', '2025-11-11 09:03:24.204778', 3),
(7, 'abhirami ', '6543278908654321', '09/35', '789', '250.00', '2025-11-11 10:04:29.132685', 3),
(8, 'abhirami ', '7678995434325368', '09/35', '765', '250.00', '2025-11-11 10:16:14.892821', 3),
(9, 'abhirami ', '7678995434325368', '09/35', '765', '250.00', '2025-11-11 10:17:22.611642', 3),
(10, 'abhirami ', '7678995434325368', '09/35', '765', '250.00', '2025-11-11 10:18:02.783969', 3),
(11, 'abhirami ', '4567789943211334', '09/35', '767', '150.00', '2025-11-11 10:20:15.805427', 3),
(12, 'abhirami ', '4567789943211334', '09/35', '767', '150.00', '2025-11-11 10:25:10.540771', 3),
(13, 'abhirami ', '4568012345678909', '12/40', '765', '150.00', '2025-11-18 15:50:46.069830', 12),
(14, 'abhirami ', '5667787654323456', '11/33', '345', '0.00', '2025-11-18 16:08:25.554704', 12),
(15, 'aswini', '7654340987654321', '09/42', '876', '150.00', '2025-11-18 16:10:36.655685', 12),
(16, 'aswini', '6789065432198009', '08/40', '765', '250.00', '2025-11-20 05:08:29.064818', 12),
(17, 'aswini', '3765901234567809', '11/29', '123', '150.00', '2025-11-20 05:13:37.929497', 12),
(18, 'aswini', '7865432198076543', '12/40', '345', '150.00', '2025-11-20 05:15:54.293642', 12);

-- --------------------------------------------------------

--
-- Table structure for table `herbs_product`
--

CREATE TABLE IF NOT EXISTS `herbs_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `herbs_product`
--

INSERT INTO `herbs_product` (`id`, `name`, `description`, `price`, `image`) VALUES
(6, 'peppermint', '', '350.00', 'profile/peppermint.jpg'),
(7, 'Rosemarry', '', '150.00', 'profile/Rosemary.jpg'),
(8, 'Aloe vera', '', '130.00', 'profile/aloe.jpeg'),
(9, 'lemongrass', '', '230.00', 'profile/lemongrass.jpg'),
(10, 'chamomile', '', '280.00', 'profile/chamomile.jpg'),
(11, 'Tulsi', '', '70.00', 'profile/tulsi.jpg'),
(12, 'Mint', '', '100.00', 'profile/mint.jpeg'),
(13, 'Ashwagandha', '', '120.00', 'profile/ashwa_dVFfRxf.png');

-- --------------------------------------------------------

--
-- Table structure for table `herbs_product2`
--

CREATE TABLE IF NOT EXISTS `herbs_product2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `herbs_product2`
--

INSERT INTO `herbs_product2` (`id`, `name`, `price`, `image`) VALUES
(1, 'shovel', '1000.00', 'profile/shovel.jpeg'),
(2, 'rake', '950.00', 'profile/rake.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `herbs_productorder`
--

CREATE TABLE IF NOT EXISTS `herbs_productorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) unsigned NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `ordered_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `herbs_productorder_product_id_2bfd6fe3_fk_herbs_product_id` (`product_id`),
  KEY `herbs_productorder_user_id_063a4803_fk_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `herbs_productorder`
--

INSERT INTO `herbs_productorder` (`id`, `quantity`, `total_price`, `ordered_at`, `product_id`, `user_id`) VALUES
(1, 1, '150.00', '2025-11-11 10:25:10.546447', 7, 3),
(2, 1, '150.00', '2025-11-18 15:50:46.079081', 7, 12),
(3, 1, '150.00', '2025-11-18 16:10:36.662670', 7, 12),
(4, 1, '250.00', '2025-11-20 05:08:29.070888', 6, 12),
(5, 1, '150.00', '2025-11-20 05:13:37.935100', 7, 12),
(6, 1, '150.00', '2025-11-20 05:15:54.295884', 7, 12);

-- --------------------------------------------------------

--
-- Table structure for table `herbs_tutorial`
--

CREATE TABLE IF NOT EXISTS `herbs_tutorial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `herbs_tutorial`
--

INSERT INTO `herbs_tutorial` (`id`, `title`, `video`) VALUES
(1, 'ploughing', 'videos/v1.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `profile` varchar(100) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `phone`, `fullname`, `profile`, `role`) VALUES
(3, 'pbkdf2_sha256$260000$cO349qk4dSotmHr66Nbd6M$eCtvOn7pFR2AL0BXtl8JVLtroI5lesoyRtzqY6BUuxU=', '2025-11-18 14:39:09.371665', 0, '', '', 0, 1, '2025-11-10 05:32:26.725727', 'abhiramiramesh97@gmail.com', '9744', 'abhirami', '', NULL),
(4, 'pbkdf2_sha256$260000$MwMQsZrHTNYoYUwIgsboXS$mlxHMa9f6RpDwsLWpIbuyr7rj5fzwY3tWfpOwPTGlcQ=', '2025-11-20 07:07:30.311417', 1, '', '', 1, 1, '2025-11-11 09:23:51.175284', 'admin123@gmail.com', NULL, NULL, '', NULL),
(9, 'pbkdf2_sha256$260000$RYFW8KHoziGR6sJ2uUlUTr$enjuI4ElHwObbQGljqLB9dGpvDsGYQMjVJ4RDRnLxsw=', '2025-11-20 07:08:34.945017', 0, '', '', 0, 1, '2025-11-17 05:56:43.995911', 'rupesh2@gmail.com', '67892', 'rupesh', '', 'farmer'),
(10, 'pbkdf2_sha256$260000$TN22gIMr1FKaZCBkv7xwSd$gIk21TlM9fWyfzTmds19pqMF2wG/Oc/QafDp90MhRuQ=', NULL, 0, '', '', 0, 1, '2025-11-17 05:57:55.254013', 'suresh123@gmail.com', '9744', 'suresh', '', 'farmer'),
(11, 'pbkdf2_sha256$260000$BT5bov3wkU4uPlKLBO2dwI$AFvBZAG2E6hRVmAHlUMKmfu4f9TUeuKgtbupnmL7ND0=', NULL, 0, '', '', 0, 1, '2025-11-17 05:58:14.230901', 'sudhish1@gmail.com', '6789', 'sudhish', '', 'farmer'),
(12, 'pbkdf2_sha256$260000$0ZMke8dliO74v1ACqBaQBp$ll0UE3pMehbqVoYAUjTtlQIEuVRTIuVlEmIJZ3Ip0ik=', '2025-11-18 16:09:55.740788', 0, '', '', 0, 1, '2025-11-18 14:39:31.051598', 'aswini123@gmail.com', '7654', 'aswini', '', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_groups_user_id_group_id_40beef00_uniq` (`user_id`,`group_id`),
  KEY `user_groups_group_id_b76f8aba_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_permissions_user_id_permission_id_7dc6e2e0_uniq` (`user_id`,`permission_id`),
  KEY `user_user_permission_permission_id_9deb68a3_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `herbs_cartitem`
--
ALTER TABLE `herbs_cartitem`
  ADD CONSTRAINT `herbs_cartitem_product_id_0a2de65f_fk_herbs_product_id` FOREIGN KEY (`product_id`) REFERENCES `herbs_product` (`id`),
  ADD CONSTRAINT `herbs_cartitem_user_id_efad0768_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `herbs_cartitem2`
--
ALTER TABLE `herbs_cartitem2`
  ADD CONSTRAINT `herbs_cartitem2_product_id_149b2fd5_fk_herbs_product2_id` FOREIGN KEY (`product_id`) REFERENCES `herbs_product2` (`id`),
  ADD CONSTRAINT `herbs_cartitem2_user_id_5f499ceb_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `herbs_order`
--
ALTER TABLE `herbs_order`
  ADD CONSTRAINT `herbs_order_user_id_cab2d30a_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `herbs_payment`
--
ALTER TABLE `herbs_payment`
  ADD CONSTRAINT `herbs_payment_user_id_fbdf358f_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `herbs_productorder`
--
ALTER TABLE `herbs_productorder`
  ADD CONSTRAINT `herbs_productorder_product_id_2bfd6fe3_fk_herbs_product_id` FOREIGN KEY (`product_id`) REFERENCES `herbs_product` (`id`),
  ADD CONSTRAINT `herbs_productorder_user_id_063a4803_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_group_id_b76f8aba_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_groups_user_id_abaea130_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_user_permissions`
--
ALTER TABLE `user_user_permissions`
  ADD CONSTRAINT `user_user_permissions_user_id_ed4a47ea_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_user_permission_permission_id_9deb68a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
--
-- Database: `malware_dbnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add regtable', 7, 'add_regtable'),
(26, 'Can change regtable', 7, 'change_regtable'),
(27, 'Can delete regtable', 7, 'delete_regtable'),
(28, 'Can view regtable', 7, 'view_regtable'),
(29, 'Can add uploadtable', 8, 'add_uploadtable'),
(30, 'Can change uploadtable', 8, 'change_uploadtable'),
(31, 'Can delete uploadtable', 8, 'delete_uploadtable'),
(32, 'Can view uploadtable', 8, 'view_uploadtable');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'malwaree', 'regtable'),
(8, 'malwaree', 'uploadtable'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-03-01 11:08:40.406975'),
(2, 'auth', '0001_initial', '2025-03-01 11:08:41.377171'),
(3, 'admin', '0001_initial', '2025-03-01 11:08:41.583300'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-03-01 11:08:41.599759'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-01 11:08:41.623648'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-03-01 11:08:41.794202'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-03-01 11:08:41.867365'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-03-01 11:08:41.949447'),
(9, 'auth', '0004_alter_user_username_opts', '2025-03-01 11:08:41.965067'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-03-01 11:08:42.031803'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-03-01 11:08:42.032394'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-03-01 11:08:42.049355'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-03-01 11:08:42.117681'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-03-01 11:08:42.202803'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-03-01 11:08:42.282496'),
(16, 'auth', '0011_update_proxy_permissions', '2025-03-01 11:08:42.299087'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-03-01 11:08:42.375979'),
(18, 'malwaree', '0001_initial', '2025-03-01 11:08:42.468714'),
(19, 'malwaree', '0002_auto_20250206_1444', '2025-03-01 11:08:42.568360'),
(20, 'malwaree', '0003_auto_20250301_1622', '2025-03-01 11:08:42.692111'),
(21, 'sessions', '0001_initial', '2025-03-01 11:08:42.758713');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('f6i8rspcye942i4lcqfndvpn1wa2fj9l', 'e30:1txfJd:Z93VATD5aezeLzHBApZGsMTrkDmawP9KdMSc86HQd_E', '2025-04-10 04:58:05.041160'),
('x3od2a1mk4rk8nz5988sqbtmsh9sxkr5', 'eyJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiYWJoaXJhbWkifQ:1toKkQ:gGogybkb1TFOkgT7AOQOJ9IP78JtqqbBkXkTYVDtMbc', '2025-03-15 11:11:10.501009');

-- --------------------------------------------------------

--
-- Table structure for table `malwaree_regtable`
--

CREATE TABLE IF NOT EXISTS `malwaree_regtable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `malwaree_regtable`
--

INSERT INTO `malwaree_regtable` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'abhirami', 'abhiramiramesh97@gmail.com', '123', '9744938159'),
(2, '', '', '', ''),
(3, 'abhirami', 'abhiramiramesh97@gmail.com', '1212', '9744938159');

-- --------------------------------------------------------

--
-- Table structure for table `malwaree_uploadtable`
--

CREATE TABLE IF NOT EXISTS `malwaree_uploadtable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `images` varchar(150) NOT NULL,
  `result` varchar(150) NOT NULL,
  `user_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `malwaree_uploadtable`
--

INSERT INTO `malwaree_uploadtable` (`id`, `images`, `result`, `user_id`) VALUES
(1, 'test0_HkqjnnS.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(2, 'test3_LesC9t0.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(3, 'test3_CnCE3yC.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(4, 'test3_smjBUBf.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(5, 'test5_cVUCTRK.csv', 'ANTIVIRUS BASED MALWARE NOT DETECTED', '1'),
(6, 'test0_KG41pGZ.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(7, 'test1_8VDSwih.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(8, 'test2_XKF5hjU.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(9, 'test3_WTxR0fI.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(10, 'test4_kihSQ9P.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '1'),
(11, 'test5_WB5ZfjD.csv', 'ANTIVIRUS BASED MALWARE NOT DETECTED', '1'),
(12, 'test6_7jpLwYv.csv', 'ANTIVIRUS BASED MALWARE NOT DETECTED', '1'),
(13, 'test0_8Hac06T.csv', 'ANTIVIRUS BASED MALWARE DETECTED', '3');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"herb","table":"user"},{"db":"herb","table":"herbs_cartitem2"},{"db":"herb","table":"herbs_product2"},{"db":"herb","table":"herbs_productorder"},{"db":"herb","table":"herbs_product"},{"db":"herb","table":"herbs_payment"},{"db":"herb","table":"herbs_details"},{"db":"furn","table":"user"},{"db":"furn","table":"login_customisedorder"},{"db":"furn","table":"login_productorder"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-02-07 07:04:37', '{"collation_connection":"utf8mb4_general_ci"}');
--
-- Database: `pro1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add result', 7, 'add_result'),
(26, 'Can change result', 7, 'change_result'),
(27, 'Can delete result', 7, 'delete_result'),
(28, 'Can view result', 7, 'view_result'),
(29, 'Can add user_reg', 8, 'add_user_reg'),
(30, 'Can change user_reg', 8, 'change_user_reg'),
(31, 'Can delete user_reg', 8, 'delete_user_reg'),
(32, 'Can view user_reg', 8, 'view_user_reg');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'malware', 'result'),
(8, 'malware', 'user_reg'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-07 07:37:21.988253'),
(2, 'auth', '0001_initial', '2025-02-07 07:37:22.860487'),
(3, 'admin', '0001_initial', '2025-02-07 07:37:23.067479'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-07 07:37:23.083751'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-07 07:37:23.100728'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-07 07:37:23.252444'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-07 07:37:23.315996'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-07 07:37:23.404523'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-07 07:37:23.418745'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-07 07:37:23.478070'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-07 07:37:23.486392'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-07 07:37:23.498544'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-07 07:37:23.577543'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-07 07:37:23.645557'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-07 07:37:23.714155'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-07 07:37:23.726960'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-07 07:37:23.804370'),
(18, 'malware', '0001_initial', '2025-02-07 07:37:23.893419'),
(19, 'sessions', '0001_initial', '2025-02-07 07:37:23.961025');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `malware_result`
--

CREATE TABLE IF NOT EXISTS `malware_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `upload` varchar(150) NOT NULL,
  `result` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `malware_user_reg`
--

CREATE TABLE IF NOT EXISTS `malware_user_reg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_new_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'new', 'product'),
(6, 'new', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-25 07:25:27.321423'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-09-25 07:25:27.455497'),
(3, 'auth', '0001_initial', '2025-09-25 07:25:27.883434'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-09-25 07:25:27.957158'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-09-25 07:25:27.966585'),
(6, 'auth', '0004_alter_user_username_opts', '2025-09-25 07:25:27.975043'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-09-25 07:25:27.980962'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-09-25 07:25:27.985157'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-09-25 07:25:27.993674'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-09-25 07:25:28.004839'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-09-25 07:25:28.013312'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-09-25 07:25:28.079097'),
(13, 'auth', '0011_update_proxy_permissions', '2025-09-25 07:25:28.085402'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-09-25 07:25:28.092856'),
(15, 'new', '0001_initial', '2025-09-25 07:25:28.568622'),
(16, 'admin', '0001_initial', '2025-09-25 07:25:28.771760'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-09-25 07:25:28.781979'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-25 07:25:28.795844'),
(19, 'new', '0002_auto_20250925_1255', '2025-09-25 07:25:28.932246'),
(20, 'sessions', '0001_initial', '2025-09-25 07:25:29.000592'),
(21, 'new', '0003_auto_20250926_0720', '2025-09-26 01:50:28.068618');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2yhdnesm782wq8r940tkyubkbzy5fyt7', '.eJxVjMEOwiAQBf-FsyHAAosevfcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxC5MstPvFkN65LYDuod26zz1ti5z5LvCDzr41Ck_r4f7d1DDqN86USxKZI1BOKNliQBGA6ADg4mUJOckYaRshQJVrAtCnK0FiQXJJM3eH9FfNxA:1v5dv0:d_NQIimRK48jHFs33cpLZsp7CvjVj9G8qsfmi3H6MDY', '2025-10-20 05:37:54.168470');

-- --------------------------------------------------------

--
-- Table structure for table `new_product`
--

CREATE TABLE IF NOT EXISTS `new_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productname` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `new_product`
--

INSERT INTO `new_product` (`id`, `productname`, `price`, `profile`) VALUES
(4, 'Apple', '70.00', 'products/apple.jpg'),
(5, 'orange', '60.00', 'products/orange.jpeg'),
(6, 'grapes', '65.00', 'products/grapes.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `new_user`
--

CREATE TABLE IF NOT EXISTS `new_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_user`
--

INSERT INTO `new_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `phone`, `profile`) VALUES
(1, 'pbkdf2_sha256$260000$QyECJN3DZh5uWwtASVpdv5$K/fo/R9EQApaA03qlIGCAOMzmTNnD3O2a2Z9llOpED0=', '2025-10-06 05:37:54.164008', 1, 'admin', '', '', 'admin21@gmail.com', 1, 1, '2025-09-25 07:37:14.289798', '', ''),
(2, '', NULL, 0, '', '', '', '', 0, 1, '2025-09-26 01:32:48.376757', '', 'profile/id_card.jpg'),
(3, 'pbkdf2_sha256$260000$LWw8jRDqtKRvzMfXDlW76F$Vt/jqRmImkRqxeQR+o1ZdpzJaXwnMHhTAM4t6wPY3OA=', '2025-10-06 05:37:27.964273', 0, 'abhirami', '', '', 'abhiramiramesh97@gmail.com', 0, 1, '2025-09-26 01:36:23.353243', '9744', 'profile/Gemini_Generated_Image_5u84r5u84r5u84r5_LvErNDv.png');

-- --------------------------------------------------------

--
-- Table structure for table `new_user_groups`
--

CREATE TABLE IF NOT EXISTS `new_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `new_user_groups_user_id_group_id_a61551a6_uniq` (`user_id`,`group_id`),
  KEY `new_user_groups_group_id_e7605d00_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `new_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `new_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `new_user_user_permissions_user_id_permission_id_8acc164b_uniq` (`user_id`,`permission_id`),
  KEY `new_user_user_permis_permission_id_925ba394_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_new_user_id` FOREIGN KEY (`user_id`) REFERENCES `new_user` (`id`);

--
-- Constraints for table `new_user_groups`
--
ALTER TABLE `new_user_groups`
  ADD CONSTRAINT `new_user_groups_group_id_e7605d00_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `new_user_groups_user_id_3d1f8c00_fk_new_user_id` FOREIGN KEY (`user_id`) REFERENCES `new_user` (`id`);

--
-- Constraints for table `new_user_user_permissions`
--
ALTER TABLE `new_user_user_permissions`
  ADD CONSTRAINT `new_user_user_permissions_user_id_5786269b_fk_new_user_id` FOREIGN KEY (`user_id`) REFERENCES `new_user` (`id`),
  ADD CONSTRAINT `new_user_user_permis_permission_id_925ba394_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
--
-- Database: `test`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');
--
-- Database: `xyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_first_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'first', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-17 07:05:02.765247'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-09-17 07:05:02.883290'),
(3, 'auth', '0001_initial', '2025-09-17 07:05:03.362157'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-09-17 07:05:03.454255'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-09-17 07:05:03.461812'),
(6, 'auth', '0004_alter_user_username_opts', '2025-09-17 07:05:03.470739'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-09-17 07:05:03.477963'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-09-17 07:05:03.482840'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-09-17 07:05:03.492128'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-09-17 07:05:03.498620'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-09-17 07:05:03.508232'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-09-17 07:05:03.574799'),
(13, 'auth', '0011_update_proxy_permissions', '2025-09-17 07:05:03.582093'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-09-17 07:05:03.590947'),
(15, 'first', '0001_initial', '2025-09-17 07:05:04.013973'),
(16, 'admin', '0001_initial', '2025-09-17 07:05:04.194861'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-09-17 07:05:04.204257'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-17 07:05:04.217516'),
(19, 'sessions', '0001_initial', '2025-09-17 07:05:04.289618');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first_user`
--

CREATE TABLE IF NOT EXISTS `first_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `first_user`
--

INSERT INTO `first_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `profile`, `fullname`, `phoneno`) VALUES
(1, '', NULL, 0, '', 'abhirami', 'b', 'abhiramiramesh97@gmail.com', 0, 1, '2025-09-19 06:11:53.315316', 'profile/Gemini_Generated_Image_5u84r5u84r5u84r5.png', '', '9744444');

-- --------------------------------------------------------

--
-- Table structure for table `first_user_groups`
--

CREATE TABLE IF NOT EXISTS `first_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `first_user_groups_user_id_group_id_ca181331_uniq` (`user_id`,`group_id`),
  KEY `first_user_groups_group_id_5ca789d9_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `first_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `first_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `first_user_user_permissions_user_id_permission_id_c9abc831_uniq` (`user_id`,`permission_id`),
  KEY `first_user_user_perm_permission_id_df63bf93_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_first_user_id` FOREIGN KEY (`user_id`) REFERENCES `first_user` (`id`);

--
-- Constraints for table `first_user_groups`
--
ALTER TABLE `first_user_groups`
  ADD CONSTRAINT `first_user_groups_group_id_5ca789d9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `first_user_groups_user_id_f57b31a9_fk_first_user_id` FOREIGN KEY (`user_id`) REFERENCES `first_user` (`id`);

--
-- Constraints for table `first_user_user_permissions`
--
ALTER TABLE `first_user_user_permissions`
  ADD CONSTRAINT `first_user_user_permissions_user_id_bd2956d9_fk_first_user_id` FOREIGN KEY (`user_id`) REFERENCES `first_user` (`id`),
  ADD CONSTRAINT `first_user_user_perm_permission_id_df63bf93_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
