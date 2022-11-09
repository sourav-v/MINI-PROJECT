-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 12:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health and fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_trainer`
--

CREATE TABLE `add_trainer` (
  `tid` int(11) NOT NULL,
  `trainer_name` varchar(20) NOT NULL,
  `email_id` varchar(25) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `experience` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_trainer`
--

INSERT INTO `add_trainer` (`tid`, `trainer_name`, `email_id`, `phone`, `gender`, `dob`, `experience`) VALUES
(1, 'iuhiu', 'souravsthsh@gmail.com', 2147483647, 'male', '2022-10-20', '6'),
(2, 'eef', 'eeeee546556', 4444, 'male', '2022-11-09', '6');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add login', 7, 'add_login'),
(26, 'Can change login', 7, 'change_login'),
(27, 'Can delete login', 7, 'delete_login'),
(28, 'Can view login', 7, 'view_login'),
(29, 'Can add registration', 8, 'add_registration'),
(30, 'Can change registration', 8, 'change_registration'),
(31, 'Can delete registration', 8, 'delete_registration'),
(32, 'Can view registration', 8, 'view_registration'),
(33, 'Can add feedback', 9, 'add_feedback'),
(34, 'Can change feedback', 9, 'change_feedback'),
(35, 'Can delete feedback', 9, 'delete_feedback'),
(36, 'Can view feedback', 9, 'view_feedback'),
(37, 'Can add packages', 10, 'add_packages'),
(38, 'Can change packages', 10, 'change_packages'),
(39, 'Can delete packages', 10, 'delete_packages'),
(40, 'Can view packages', 10, 'view_packages'),
(41, 'Can add user package', 11, 'add_userpackage'),
(42, 'Can change user package', 11, 'change_userpackage'),
(43, 'Can delete user package', 11, 'delete_userpackage'),
(44, 'Can view user package', 11, 'view_userpackage'),
(45, 'Can add payment', 12, 'add_payment'),
(46, 'Can change payment', 12, 'change_payment'),
(47, 'Can delete payment', 12, 'delete_payment'),
(48, 'Can view payment', 12, 'view_payment'),
(49, 'Can add place order', 13, 'add_placeorder'),
(50, 'Can change place order', 13, 'change_placeorder'),
(51, 'Can delete place order', 13, 'delete_placeorder'),
(52, 'Can view place order', 13, 'view_placeorder'),
(53, 'Can add product', 14, 'add_product'),
(54, 'Can change product', 14, 'change_product'),
(55, 'Can delete product', 14, 'delete_product'),
(56, 'Can view product', 14, 'view_product'),
(57, 'Can add add trainer', 15, 'add_addtrainer'),
(58, 'Can change add trainer', 15, 'change_addtrainer'),
(59, 'Can delete add trainer', 15, 'delete_addtrainer'),
(60, 'Can view add trainer', 15, 'view_addtrainer'),
(61, 'Can add training plan', 16, 'add_trainingplan'),
(62, 'Can change training plan', 16, 'change_trainingplan'),
(63, 'Can delete training plan', 16, 'delete_trainingplan'),
(64, 'Can view training plan', 16, 'view_trainingplan');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'feedback', 'feedback'),
(7, 'login', 'login'),
(10, 'packages', 'packages'),
(11, 'packages', 'userpackage'),
(12, 'payment', 'payment'),
(13, 'place_order', 'placeorder'),
(14, 'product', 'product'),
(8, 'registration', 'registration'),
(6, 'sessions', 'session'),
(15, 'trainer', 'addtrainer'),
(16, 'training_plan', 'trainingplan');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-30 06:58:53.392293'),
(2, 'auth', '0001_initial', '2022-10-30 06:58:54.012192'),
(3, 'admin', '0001_initial', '2022-10-30 06:58:54.190579'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-30 06:58:54.215775'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-30 06:58:54.233798'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-30 06:58:54.333821'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-30 06:58:54.430576'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-30 06:58:54.484632'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-30 06:58:54.500636'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-30 06:58:54.582907'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-30 06:58:54.582907'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-30 06:58:54.614668'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-30 06:58:54.656200'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-30 06:58:54.695658'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-30 06:58:54.727303'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-30 06:58:54.735368'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-30 06:58:54.776109'),
(18, 'feedback', '0001_initial', '2022-10-30 06:58:54.792145'),
(19, 'login', '0001_initial', '2022-10-30 06:58:54.800107'),
(20, 'packages', '0001_initial', '2022-10-30 06:58:54.817120'),
(21, 'payment', '0001_initial', '2022-10-30 06:58:54.834211'),
(22, 'place_order', '0001_initial', '2022-10-30 06:58:54.843146'),
(23, 'product', '0001_initial', '2022-10-30 06:58:54.851697'),
(24, 'registration', '0001_initial', '2022-10-30 06:58:54.859632'),
(25, 'sessions', '0001_initial', '2022-10-30 06:58:54.913330'),
(26, 'trainer', '0001_initial', '2022-10-30 06:58:54.932297'),
(27, 'training_plan', '0001_initial', '2022-10-30 06:58:54.936237');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('o8pmsvsix842fh2zn6p0xxz5fvez45wz', 'eyJ1aWQiOjUsIm9pZCI6IjE0IiwicGtpZCI6IjYiLCJhbXQiOjU1fQ:1ordmR:mjFmUshF72nasykI7osDdtfldsC5a8siO69y12XDRis', '2022-11-20 11:25:35.892050');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `feedback` varchar(50) NOT NULL,
  `reply` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `feedback`, `reply`, `date`) VALUES
(1, 1, 'SJS', 'uih', '2022-10-02'),
(2, 1, 'GY67', '1221', '2022-10-02'),
(3, 1, 'adkkfyeiuf', 'pending', '2022-10-05'),
(4, 5, '123', 'pending', '2022-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(20) NOT NULL,
  `uid` int(20) NOT NULL,
  `type` varchar(25) NOT NULL,
  `email_id` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `uid`, `type`, `email_id`, `password`) VALUES
(1, 5, 'user', 'devan', '123'),
(2, 0, 'admin', 'admin', 'admin'),
(3, 6, 'user', 'shAKKER', '321'),
(4, 7, 'user', 'sourav', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `pid` int(11) NOT NULL,
  `package_name` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `duration` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`pid`, `package_name`, `amount`, `duration`) VALUES
(1, 'hhhu', 68686, '2022-10-12'),
(2, 'gold', 2000, '2022-10-10'),
(3, 'diomond', 100, '2022-11-16'),
(4, 'sdw', 22, '2022-11-02'),
(5, 'sdw', 22, '2022-11-02'),
(6, 'ereafea', 55, '2022-12-01'),
(7, 'ereafea', 3, '2022-11-02'),
(8, 'fg', 55, '2022-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `card_number` int(11) NOT NULL,
  `cardholder_name` varchar(30) NOT NULL,
  `cvv` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `uid`, `product_id`, `package_id`, `card_number`, `cardholder_name`, `cvv`, `amount`, `date`, `status`) VALUES
(1, 1, 1, 1, 665, 'efd', 655, 256, '2022-10-14', ''),
(2, 1, 1, 1, -5666, '4', 2, 2, '2022-09-27', ''),
(3, 1, 1, 1, 65, '6', 6, 200, '2022-09-26', ''),
(4, 1, 1, 1, 6556, 'saarun', 158, 3122, '2022-10-11', ''),
(5, 1, 1, 1, 2525, '12', 2, 22, '2022-09-28', ''),
(6, 1, 1, 1, 35, '223', 322, 300, '2022-10-14', ''),
(7, 1, 1, 1, 322, '22', 22, 0, '2022-10-20', ''),
(8, 1, 1, 1, 11, '552', 33, 340, '2022-10-03', ''),
(9, 1, 1, 1, 11, '66', 44, 22, '2022-11-01', ''),
(10, 1, 1, 1, 22, 'mnn', 123, 122, '2022-10-15', ''),
(11, 1, 1, 1, 147, 'hhh', 123, 200, '2022-10-22', ''),
(12, 5, 1, 1, 23, '22', 535, 2, '2022-11-01', ''),
(13, 5, 1, 1, 2, '53', 23, 323, '2022-09-29', ''),
(14, 5, 1, 1, 212, '155', 22, 22, '2022-11-04', ''),
(15, 5, 2, 1, 1212, 'dfdfd', 123, 600, '2022-11-05', ''),
(16, 5, 2, 1, 1212, 'dfdfd', 123, 600, '2022-11-05', 'paid'),
(17, 5, 0, 1, 121, 'dfdf', 123, 68686, '2022-11-05', 'paid'),
(18, 5, 3, 0, 533, '3223', 3232, 3200, '2022-12-06', 'paid'),
(19, 5, 0, 1, 45545, '66', 6, 68686, '2022-11-08', 'paid'),
(20, 5, 1, 0, 665, '66', 66, 2770, '2022-11-24', 'paid'),
(21, 5, 0, 5, 232, '32', 32, 22, '0006-03-31', 'paid'),
(22, 5, 14, 0, 323, '33', 33, 1000, '2022-11-23', 'paid'),
(23, 5, 0, 1, 877657, 'hbh', 123, 68686, '2022-11-14', 'paid'),
(24, 5, 1, 0, 8768757, 'gvjg', 123, 1108, '2022-11-07', 'paid'),
(25, 5, 0, 1, 6, '656', 65, 68686, '0066-06-06', 'paid'),
(26, 5, 0, 7, 9865, 'm k', 123, 3, '2022-11-08', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `place_order`
--

CREATE TABLE `place_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place_order`
--

INSERT INTO `place_order` (`id`, `product_id`, `quantity`, `date`, `time`, `status`, `uid`, `total`) VALUES
(1, 1, 2, '2022-11-05', '13:47:21', 'pending', 0, 0),
(2, 2, 4, '2022-11-05', '13:49:21', 'pending', 0, 0),
(3, 2, 3, '2022-11-05', '13:51:30', 'pending', 5, 0),
(4, 2, 3, '2022-11-05', '14:01:02', 'pending', 5, 2147483647),
(5, 2, 5, '2022-11-05', '14:02:15', 'pending', 5, 2147483647),
(6, 2, 6, '2022-11-05', '14:05:35', 'pending', 5, 200),
(7, 2, 2, '2022-11-05', '14:06:40', 'pending', 5, 400),
(8, 2, 3, '2022-11-05', '14:13:38', 'pending', 5, 600),
(9, 2, 2, '2022-11-05', '14:16:10', 'pending', 5, 400),
(10, 2, 3, '2022-11-05', '14:20:05', 'paid', 5, 600),
(11, 3, 4, '2022-11-05', '15:20:15', 'paid', 5, 3200),
(12, 1, 5, '2022-11-05', '20:03:09', 'paid', 5, 2770),
(13, 14, 5, '2022-11-06', '15:27:00', 'paid', 5, 1000),
(14, 1, 2, '2022-11-06', '15:48:52', 'paid', 5, 1108);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `image` varchar(40) NOT NULL,
  `price` int(11) NOT NULL,
  `expdate` date NOT NULL,
  `stock` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `type`, `product_name`, `image`, `price`, `expdate`, `stock`, `quantity`, `description`, `status`) VALUES
(1, '', 'yuygg', 'c.jpg', 554, '2022-09-28', 5, 1, 'lkjuif', 'pending'),
(2, '', ',dembel', 'c.jpg', 200, '2022-10-10', 5, 0, 'good', 'pending'),
(3, '', 'SOURAV', 'c.jpg', 800, '2022-10-10', 10, 0, 'good one', 'pending'),
(4, '', ',dembel', 'c.jpg', 212, '2022-10-13', 5, 0, 'dsdfgy', 'pending'),
(5, '', 'fgfg', 'c.jpg', 20, '2022-10-12', 5, 0, '5333', 'pending'),
(6, '', 'SOURAV', 'c.jpg', 20, '2022-10-18', 4000, 0, 'fghkjkk', 'pending'),
(7, '', ',dembel', 'c.jpg', 535, '2022-11-16', 55, NULL, '53', 'pending'),
(8, '', ',dembel', 'a.jpg', 535, '2022-11-16', 55, NULL, '53', 'pending'),
(9, '', ',dembel', 'c.jpg', 55, '0005-05-05', 55, NULL, 'jjjsjs', 'pending'),
(10, '', 'sdedd', 'd.jpg', 20, '0022-02-01', 22, NULL, 'jkednje', 'pending'),
(11, '', ',dembel', 'h.jpg', 20, '2022-11-06', 2, NULL, 'sdf', 'pending'),
(13, '', ',dembel', 'p1808191.avif', 55, '2022-11-06', 2, NULL, ' tghytht', 'pending'),
(14, '', 'yuygg', 'download.jpg', 200, '2022-11-10', 2, NULL, 'lj j', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `uid` int(11) NOT NULL,
  `user_name` varchar(26) NOT NULL,
  `email_id` varchar(25) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `password` varchar(30) NOT NULL,
  `confirm_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`uid`, `user_name`, `email_id`, `phone`, `address`, `gender`, `dob`, `height`, `weight`, `password`, `confirm_password`) VALUES
(2, 'sourav', 'souravsthsh@gmail.com', 2147483647, 'HGHG', 'sourav', '2022-10-12', 4556, 5445, 'SOURAV', 'SOURAV'),
(3, 'sourav', 'souravsthsh@gmail.com', 2147483647, 'HGHG', 'sourav', '2022-10-12', 4556, 5445, 'SOURAV', 'SOURAV'),
(4, 'sourav', 'souravsthsh@gmail.com', 2147483647, 'valappil', 'sourav', '2022-10-21', 164, 60, '12345', '12345'),
(5, 'devan', 'souravsthsh@gmail.com', 2147483647, 'dev', 'male', '2022-11-01', 58, 21, '123', '123'),
(6, 'shAKKER', 'souravsthsh@gmail.com', 2147483647, 'sa', 'male', '2022-11-18', 225, 25, '321', '321'),
(7, 'sourav', 'souravsthsh@gmail.com', 2147483647, 'dsvs', 'male', '2022-11-18', 312, 45, 'aa', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `training_plan`
--

CREATE TABLE `training_plan` (
  `pid` int(11) NOT NULL,
  `meal` varchar(30) NOT NULL,
  `foodchart` varchar(50) NOT NULL,
  `exercise` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `exercise_pattern_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_plan`
--

INSERT INTO `training_plan` (`pid`, `meal`, `foodchart`, `exercise`, `time`, `exercise_pattern_description`) VALUES
(1, 'hv', 'htfg', 'h', '16:00', 'sfaxcxvdz'),
(2, 'asdjkxdfe', 'rggrw', 'rg', '12:55', 'asdfsc'),
(3, 'gvg', 'bread', '', '22:18', 'fsghshjx'),
(4, 'hg', 'klzjka', '', '16:38', 'hdhsagksjahcsadkjsacds,chlksjccdskjchdskjchkdsjhcksd'),
(5, 'yguyggy', 'ffdc', '', '22:23', '4lhjg');

-- --------------------------------------------------------

--
-- Table structure for table `user_package`
--

CREATE TABLE `user_package` (
  `ur_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_package`
--

INSERT INTO `user_package` (`ur_id`, `uid`, `p_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 2),
(9, 1, 1),
(10, 1, 1),
(11, 5, 1),
(12, 5, 1),
(13, 5, 1),
(14, 5, 1),
(15, 5, 1),
(16, 5, 1),
(17, 5, 1),
(18, 5, 1),
(19, 5, 1),
(20, 5, 1),
(21, 5, 1),
(22, 5, 1),
(23, 5, 2),
(24, 5, 1),
(25, 5, 5),
(26, 5, 1),
(27, 5, 2),
(28, 5, 1),
(29, 5, 1),
(30, 5, 3),
(31, 5, 1),
(32, 5, 1),
(33, 5, 1),
(34, 5, 5),
(35, 5, 1),
(36, 5, 1),
(37, 5, 4),
(38, 5, 2),
(39, 5, 1),
(40, 5, 7),
(41, 5, 5),
(42, 5, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_trainer`
--
ALTER TABLE `add_trainer`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `place_order`
--
ALTER TABLE `place_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `training_plan`
--
ALTER TABLE `training_plan`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user_package`
--
ALTER TABLE `user_package`
  ADD PRIMARY KEY (`ur_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_trainer`
--
ALTER TABLE `add_trainer`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `place_order`
--
ALTER TABLE `place_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `training_plan`
--
ALTER TABLE `training_plan`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_package`
--
ALTER TABLE `user_package`
  MODIFY `ur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
