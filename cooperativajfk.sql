-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-06-2023 a las 06:10:57
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooperativajfk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `auth_permission`
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
(25, 'Can add Codeudor', 7, 'add_codeudor'),
(26, 'Can change Codeudor', 7, 'change_codeudor'),
(27, 'Can delete Codeudor', 7, 'delete_codeudor'),
(28, 'Can view Codeudor', 7, 'view_codeudor'),
(29, 'Can add modalidad', 8, 'add_modalidad'),
(30, 'Can change modalidad', 8, 'change_modalidad'),
(31, 'Can delete modalidad', 8, 'delete_modalidad'),
(32, 'Can view modalidad', 8, 'view_modalidad'),
(33, 'Can add venta producto', 9, 'add_prestamos'),
(34, 'Can change venta producto', 9, 'change_prestamos'),
(35, 'Can delete venta producto', 9, 'delete_prestamos'),
(36, 'Can view venta producto', 9, 'view_prestamos'),
(37, 'Can add Nombre empresa', 10, 'add_empresa'),
(38, 'Can change Nombre empresa', 10, 'change_empresa'),
(39, 'Can delete Nombre empresa', 10, 'delete_empresa'),
(40, 'Can view Nombre empresa', 10, 'view_empresa'),
(41, 'Can add socio', 11, 'add_socios'),
(42, 'Can change socio', 11, 'change_socios'),
(43, 'Can delete socio', 11, 'delete_socios'),
(44, 'Can view socio', 11, 'view_socios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$xyOnKDJ6TYBN9YkGINXhaI$tdMDf73hicvJrzm01HP4nYQ1+0SHB/lNoI4S/3B8bpo=', '2023-06-09 05:08:24.759343', 1, 'dylan', '', '', 'ddavidtorres@uniguajira.edu.co', 1, 1, '2023-06-09 05:07:41.963643');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codeudor_codeudor`
--

DROP TABLE IF EXISTS `codeudor_codeudor`;
CREATE TABLE IF NOT EXISTS `codeudor_codeudor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cedula` smallint NOT NULL,
  `nombreCodeudor` varchar(60) NOT NULL,
  `apellidoCodeudor` varchar(60) NOT NULL,
  `ciudadCodeudor` varchar(100) NOT NULL,
  `telefonoCodeudor` varchar(12) NOT NULL,
  `direccionCodeudor` varchar(100) NOT NULL,
  `correoCodeudor` varchar(100) NOT NULL,
  `PosibleSocio` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'codeudor', 'codeudor'),
(8, 'prestamos', 'modalidad'),
(9, 'prestamos', 'prestamos'),
(10, 'socios', 'empresa'),
(11, 'socios', 'socios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-09 05:06:22.313511'),
(2, 'auth', '0001_initial', '2023-06-09 05:06:28.766960'),
(3, 'admin', '0001_initial', '2023-06-09 05:06:29.888213'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-09 05:06:29.893213'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-09 05:06:29.898215'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-09 05:06:30.277299'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-09 05:06:30.496349'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-09 05:06:30.704396'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-09 05:06:30.709397'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-09 05:06:31.030468'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-09 05:06:31.032469'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-09 05:06:31.058475'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-09 05:06:31.299529'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-09 05:06:31.532582'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-09 05:06:31.843652'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-09 05:06:31.848653'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-09 05:06:32.192729'),
(18, 'codeudor', '0001_initial', '2023-06-09 05:06:32.228738'),
(19, 'codeudor', '0002_alter_codeudor_id', '2023-06-09 05:06:32.507800'),
(20, 'socios', '0001_initial', '2023-06-09 05:06:33.203957'),
(21, 'prestamos', '0001_initial', '2023-06-09 05:06:35.021365'),
(22, 'prestamos', '0002_alter_modalidad_id_alter_prestamos_id', '2023-06-09 05:06:36.286649'),
(23, 'sessions', '0001_initial', '2023-06-09 05:06:36.617724'),
(24, 'socios', '0002_alter_empresa_id_alter_socios_id', '2023-06-09 05:06:39.582389');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos_modalidad`
--

DROP TABLE IF EXISTS `prestamos_modalidad`;
CREATE TABLE IF NOT EXISTS `prestamos_modalidad` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pTiempoEstipulado` smallint NOT NULL,
  `tasaInteres` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos_prestamos`
--

DROP TABLE IF EXISTS `prestamos_prestamos`;
CREATE TABLE IF NOT EXISTS `prestamos_prestamos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fechaInicio` date NOT NULL,
  `valorPrestamo` double NOT NULL,
  `cuotaMensual` smallint UNSIGNED NOT NULL,
  `plazoMeses` smallint UNSIGNED NOT NULL,
  `codeudor_id` bigint NOT NULL,
  `modalidad_id` bigint NOT NULL,
  `socios_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prestamos_prestamos_codeudor_id_62133791` (`codeudor_id`),
  KEY `prestamos_prestamos_modalidad_id_edc5d53c` (`modalidad_id`),
  KEY `prestamos_prestamos_socios_id_de9c1655` (`socios_id`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios_empresa`
--

DROP TABLE IF EXISTS `socios_empresa`;
CREATE TABLE IF NOT EXISTS `socios_empresa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombreEmpresa` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios_socios`
--

DROP TABLE IF EXISTS `socios_socios`;
CREATE TABLE IF NOT EXISTS `socios_socios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombreSocio` varchar(60) NOT NULL,
  `cedula` int UNSIGNED NOT NULL,
  `apellidoSocio` varchar(60) NOT NULL,
  `ciudadSocio` varchar(100) NOT NULL,
  `telefonoSocio` varchar(12) NOT NULL,
  `direccionSocio` varchar(100) NOT NULL,
  `correoSocio` varchar(100) NOT NULL,
  `empresa_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `socios_socios_empresa_id_3ec89f5c` (`empresa_id`)
) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
