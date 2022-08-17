-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 17 日 16:20
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `shuyoung`
--

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `sid` int(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_Type` int(11) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `room_price` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_folder` varchar(100) DEFAULT NULL,
  `room_image` varchar(100) DEFAULT NULL,
  `room_name` varchar(100) DEFAULT NULL,
  `perNight` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `act_id` int(11) DEFAULT NULL,
  `act_name` varchar(255) DEFAULT NULL,
  `act_img` varchar(255) DEFAULT NULL,
  `act_people` int(11) DEFAULT NULL,
  `act_day` date DEFAULT NULL,
  `act_price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`sid`, `order_id`, `member_id`, `order_Type`, `adults`, `kids`, `room_price`, `room_id`, `room_type_id`, `room_folder`, `room_image`, `room_name`, `perNight`, `start_date`, `end_date`, `act_id`, `act_name`, `act_img`, `act_people`, `act_day`, `act_price`, `total_price`, `create_at`) VALUES
(1, '', 127, 1, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-10 16:00:00'),
(2, '', 145, 1, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 03:43:27'),
(3, '', 145, 1, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '', '2022-08-13', '2022-08-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 03:43:27'),
(4, '', 145, 1, 6, 0, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 03:47:59'),
(5, '', 145, 1, 6, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 03:57:06'),
(6, '', 145, 1, 6, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 05:18:53'),
(7, '', 145, 1, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '', '2022-08-26', '2022-08-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 05:18:53'),
(8, '', 145, 1, 6, 2, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '', '2022-08-19', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 05:18:53'),
(9, '', 145, 1, 6, 2, 1200, 9, 4, 'camp', 'B1.jpeg', '搭棚遮雨區', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 05:18:53'),
(10, '', 145, 1, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '', '2022-08-18', '2022-08-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 05:36:10'),
(11, '', 145, 1, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '', '2022-08-11', '2022-08-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 05:49:33'),
(12, '', 145, 1, 8, 0, 7800, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '', '2022-11-17', '2022-11-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 06:01:00'),
(13, '', 145, 1, 6, 0, 1200, 9, 4, 'camp', 'B1.jpeg', '搭棚遮雨區', '', '2022-08-19', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 06:08:47'),
(14, '', 145, 1, 6, 0, 1500, 10, 4, 'camp', 'C1.jpeg', '木製屋頂區', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 06:55:55'),
(15, '', 145, 1, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '', '2022-08-30', '2022-08-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 06:55:55'),
(16, '', 145, 1, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '', '2022-08-26', '2022-08-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 07:18:38'),
(17, '', 145, 1, 8, 0, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 07:22:49'),
(18, '', 145, 1, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '', '2022-09-21', '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-11 11:45:05'),
(19, '1660286079158', 145, 1, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-08-23', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 06:34:39'),
(20, '1660286079158', 145, 1, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-08-29', '2022-08-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 06:34:39'),
(21, '1660286975175', 145, 1, 8, 0, 7800, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '1', '2022-08-26', '2022-08-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 06:49:35'),
(22, '1660286975175', 145, 1, 6, 0, 1500, 10, 4, 'camp', 'C1.jpeg', '木製屋頂區', '1', '2022-08-30', '2022-08-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 06:49:35'),
(23, '1660287692427', 145, 1, 6, 0, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:01:32'),
(24, '1660288041789', 145, 1, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '3', '2022-09-21', '2022-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:07:21'),
(25, '1660288752740', 145, 1, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-08-24', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:19:12'),
(26, '1660288828379', 145, 0, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '1', '2022-08-31', '2022-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:20:28'),
(27, '1660288926503', 145, 0, 6, 0, 1500, 10, 4, 'camp', 'C1.jpeg', '木製屋頂區', '2', '2022-08-18', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:22:06'),
(28, '1660288926503', 145, 0, 8, 0, 7800, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '2', '2022-08-24', '2022-08-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:22:06'),
(29, '1660290068976', 145, 0, 6, 0, 1500, 10, 4, 'camp', 'C1.jpeg', '木製屋頂區', '1', '2022-08-26', '2022-08-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:41:08'),
(30, '1660290312467', 145, 0, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '1', '2022-08-30', '2022-08-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 07:45:12'),
(31, '1660292937215', 145, 0, 8, 0, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '3', '2022-09-19', '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:28:57'),
(32, '1660293057662', 145, 0, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '2', '2022-08-20', '2022-08-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:30:57'),
(33, '1660293106113', 145, 0, 6, 0, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '1', '2022-08-17', '2022-08-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:31:46'),
(34, '1660293281916', 145, 0, 8, 0, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '1', '2022-08-25', '2022-08-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:34:41'),
(35, '1660294124683', 145, 0, 8, 0, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:48:44'),
(36, '1660294124683', 145, 0, 8, 0, 7800, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '3', '2022-08-22', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:48:44'),
(37, '1660294370242', 145, 0, 6, 0, 1200, 9, 4, 'camp', 'B1.jpeg', '搭棚遮雨區', '1', '2022-08-24', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:52:50'),
(38, '1660294419467', 145, 0, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-08-23', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:53:39'),
(39, '1660294533911', 145, 0, 2, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2022-09-06', '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:55:33'),
(40, '1660294656333', 145, 0, 8, 0, 7800, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '1', '2022-08-18', '2022-08-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 08:57:36'),
(41, '1660295311468', 145, 0, 6, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '1', '2022-08-18', '2022-08-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:08:31'),
(42, '1660295758367', 145, 0, 6, 0, 1200, 9, 4, 'camp', 'B1.jpeg', '搭棚遮雨區', '1', '2022-08-18', '2022-08-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:15:58'),
(43, '1660295758367', 145, 0, 2, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-23', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:15:58'),
(44, '1660296471205', 145, 0, 2, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-16', '2022-08-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:27:51'),
(45, '1660296701377', 145, 0, 6, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '1', '2022-08-24', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:31:41'),
(46, '1660296863034', 145, 0, 6, 0, 1500, 10, 4, 'camp', 'C1.jpeg', '木製屋頂區', '1', '2022-08-25', '2022-08-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:34:23'),
(47, '1660297093112', 145, 0, 6, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '1', '2022-08-30', '2022-08-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:38:13'),
(48, '1660297093112', 145, 0, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-08-22', '2022-08-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:38:13'),
(49, '1660297133058', 145, 0, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '1', '2022-08-23', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:38:53'),
(50, '1660297133058', 145, 0, 5, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '2', '2022-08-22', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 09:38:53'),
(51, '1660311464685', 145, 0, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-08-17', '2022-08-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 13:37:44'),
(52, '1660311464685', 145, 0, 6, 0, 1200, 9, 4, 'camp', 'B1.jpeg', '搭棚遮雨區', '1', '2022-08-30', '2022-08-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 13:37:44'),
(53, '1660311464685', 145, 0, 6, 2, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '2', '2022-08-22', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 13:37:44'),
(54, '1660311464685', 145, 0, 6, 3, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '2', '2022-08-22', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 13:37:44'),
(55, '1660312096315', 145, 0, 6, 4, 1500, 10, 4, 'camp', 'C1.jpeg', '木製屋頂區', '1', '2022-08-18', '2022-08-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 13:48:16'),
(56, '1660312649941', 145, 0, 4, 3, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-09-07', '2022-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 13:57:29'),
(57, '1660313875951', 145, 0, 6, 4, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '2', '2022-09-14', '2022-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 14:17:55'),
(58, '1660314030992', 145, 0, 8, 4, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '2', '2022-10-12', '2022-10-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 14:20:30'),
(59, '1660315491778', 145, 0, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '1', '2022-08-17', '2022-08-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 14:44:51'),
(60, '1660326132974', 145, 0, 8, 2, 13200, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-11-15', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 17:42:12'),
(61, '1660327011773', 145, 0, 8, 4, 13600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-10-06', '2022-10-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 17:56:51'),
(62, '1660327425328', 145, 0, 8, 4, 17600, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '1', '2022-11-17', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 18:03:45'),
(63, '1660327589517', 145, 0, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-10-13', '2022-10-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 18:06:29'),
(64, '1660328798942', 145, 0, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '1', '2022-11-17', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 18:26:38'),
(65, '1660328798942', 145, 0, 8, 3, 8400, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '1', '2022-11-10', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 18:26:38'),
(66, '1660357824521', 145, 0, 3, 0, 3200, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-11-23', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 02:30:24'),
(67, '1660358336163', 145, 0, 8, 4, 21600, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '1', '2022-11-17', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 02:38:56'),
(68, '1660358397841', 145, 0, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-14', '2022-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 02:39:57'),
(69, '1660358969826', 145, 0, 8, 0, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '1', '2022-09-15', '2022-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 02:49:29'),
(70, '1660359726511', 145, 0, 8, 0, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '1', '2022-09-14', '2022-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 03:02:06'),
(71, '1660359726511', 145, 0, 8, 4, 17600, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '1', '2022-10-06', '2022-10-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 03:02:06'),
(72, '1660360644841', 145, 0, 8, 0, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '1', '2022-08-23', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 03:17:24'),
(73, '1660360723560', 145, 0, 8, 0, 1500, 10, 4, 'camp', 'C1.jpeg', '木製屋頂區', '1', '2022-08-24', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 03:18:43'),
(74, '1660371027336', 145, 0, 7, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '1', '2022-08-23', '2022-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 06:10:27'),
(75, '1660371291588', 145, 0, 8, 2, 34000, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '2', '2022-10-12', '2022-10-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 06:14:51');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
