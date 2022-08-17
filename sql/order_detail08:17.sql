-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 17 日 04:18
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
  `order_Type` int(11) NOT NULL,
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
(75, '1660371291588', 145, 0, 8, 2, 34000, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '2', '2022-10-12', '2022-10-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 06:14:51'),
(76, '1660371363260', 145, 0, 6, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-08-16', '2022-08-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 06:16:03'),
(77, '1660371460834', 145, 0, 8, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-09-21', '2022-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 06:17:40'),
(78, '1660371503558', 145, 0, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-31', '2022-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 06:18:23'),
(79, '1660408834365', 145, 0, 8, 3, 6400, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-10-13', '2022-10-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13 16:40:34'),
(80, '1660445577169', 145, 0, 8, 4, 13600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-12-15', '2022-12-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-14 02:52:57'),
(81, '1660468276108', 145, 0, 8, 3, 6400, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-09-15', '2022-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-14 09:11:16'),
(82, '1660531961795', 145, 0, 7, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '1', '2022-08-17', '2022-08-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 02:52:41'),
(83, '1660545867877', 145, 0, 8, 2, 6400, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2022-10-13', '2022-10-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 06:44:27'),
(84, '1660545867877', 145, 0, 4, 2, 6400, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2022-09-15', '2022-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 06:44:27'),
(85, '1660545867877', 145, 0, 8, 2, 16000, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '2', '2022-09-15', '2022-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 06:44:27'),
(86, '1660585107847', 145, 0, 8, 0, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '1', '2022-09-23', '2022-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 17:38:27'),
(87, '1660586371685', 145, 0, 2, 0, 6000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2023-01-12', '2023-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 17:59:31'),
(88, '1660586492402', 145, 0, 2, 0, 6000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2023-01-12', '2023-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:01:32'),
(89, '1660586534708', 145, 0, 2, 0, 6000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2023-01-12', '2023-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:02:14'),
(90, '1660586641776', 145, 0, 2, 0, 6000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2023-01-12', '2023-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:04:01'),
(91, '1660586761587', 145, 0, 2, 0, 6000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2023-01-12', '2023-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15 18:06:01'),
(92, '1660625306639', 145, 0, 6, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-09-23', '2022-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 04:48:26'),
(93, '1660625777935', 145, 0, 3, 0, 6000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '2', '2022-10-20', '2022-10-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 04:56:17'),
(94, '1660625777935', 145, 0, 7, 0, 38400, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '3', '2022-09-27', '2022-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 04:56:17'),
(95, '1660632442286', 145, 0, 6, 0, 9600, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '2', '2022-09-15', '2022-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 06:47:22'),
(96, '1660633918733', 145, 0, 7, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '1', '2022-09-22', '2022-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 07:11:58'),
(97, '1660635703099', 145, 0, 8, 0, 39000, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '5', '2022-09-19', '2022-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 07:41:43'),
(98, '1660635703099', 145, 0, 5, 0, 11600, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '2', '2022-09-08', '2022-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 07:41:43'),
(99, '1660639102332', 145, 0, 4, 0, NULL, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-08-20', '2022-08-21', NULL, NULL, NULL, NULL, NULL, 5800, 7000, '2022-08-16 08:38:22'),
(100, '1660639102332', 145, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 1, '2022-08-19', 1200, 7000, '2022-08-16 08:38:22'),
(101, '1660640953951', 145, 1, 4, 0, NULL, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '4', '2022-08-22', '2022-08-26', NULL, NULL, NULL, NULL, NULL, 51200, 53600, '2022-08-16 09:09:13'),
(102, '1660640953951', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 2, '2022-08-18', 2400, 53600, '2022-08-16 09:09:13'),
(103, '1660644078840', 145, 1, 4, 0, NULL, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '3', '2022-09-19', '2022-09-22', NULL, NULL, NULL, NULL, NULL, 9000, 10200, '2022-08-16 10:01:18'),
(104, '1660644078840', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 1, '2022-08-10', 1200, 10200, '2022-08-16 10:01:18'),
(105, '1660647467877', 145, 1, 4, 2, NULL, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '4', '2022-09-18', '2022-09-22', NULL, NULL, NULL, NULL, NULL, 19600, 22000, '2022-08-16 10:57:47'),
(106, '1660647467877', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 22000, '2022-08-16 10:57:47'),
(107, '1660647726329', 145, 1, 4, 2, NULL, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '4', '2022-09-18', '2022-09-22', NULL, NULL, NULL, NULL, NULL, 19600, 22000, '2022-08-16 11:02:06'),
(108, '1660647726329', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 22000, '2022-08-16 11:02:06'),
(109, '1660647825773', 145, 1, 4, 2, NULL, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '4', '2022-09-18', '2022-09-22', NULL, NULL, NULL, NULL, NULL, 19600, 22000, '2022-08-16 11:03:45'),
(110, '1660647825773', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 22000, '2022-08-16 11:03:45'),
(111, '1660647893664', 145, 1, 4, 2, NULL, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '4', '2022-09-18', '2022-09-22', NULL, NULL, NULL, NULL, NULL, 19600, 22000, '2022-08-16 11:04:53'),
(112, '1660647893664', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 22000, '2022-08-16 11:04:53'),
(113, '1660648825844', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 11:20:25'),
(114, '1660648825844', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, NULL, '2022-08-16 11:20:25'),
(115, '1660649176728', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:26:16'),
(116, '1660649176728', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:26:16'),
(117, '1660649938022', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:38:58'),
(118, '1660649938022', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:38:58'),
(119, '1660650027902', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:40:27'),
(120, '1660650027902', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:40:27'),
(121, '1660650238012', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:43:58'),
(122, '1660650238012', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:43:58'),
(123, '1660650335179', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:45:35'),
(124, '1660650335179', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:45:35'),
(125, '1660650375897', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:46:15'),
(126, '1660650375897', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:46:15'),
(127, '1660650496908', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:48:16'),
(128, '1660650496908', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:48:16'),
(129, '1660650651477', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:50:51'),
(130, '1660650651477', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:50:51'),
(131, '1660650719867', 145, 1, 4, 0, 25600, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2', '2022-08-23', '2022-08-25', NULL, NULL, NULL, NULL, NULL, NULL, 28000, '2022-08-16 11:51:59'),
(132, '1660650719867', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 2, '2022-08-25', 2400, 28000, '2022-08-16 11:51:59'),
(133, '1660658246833', 145, 1, 3, 0, 9000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '3', '2022-09-19', '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, 10100, '2022-08-16 13:57:26'),
(134, '1660658246833', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 1, '2022-08-18', 1200, 10100, '2022-08-16 13:57:26'),
(135, '1660658330932', 145, 1, 3, 0, 9000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '3', '2022-09-19', '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, 10200, '2022-08-16 13:58:50'),
(136, '1660658330932', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '親子溯溪', 'upstream01.jpg', 1, '2022-08-18', 1200, 10200, '2022-08-16 13:58:50'),
(137, '1660658448389', 145, 1, 2, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-18', '2022-08-19', NULL, NULL, NULL, NULL, NULL, NULL, 3000, '2022-08-16 14:00:48'),
(138, '1660658448389', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 2, '2022-08-17', 2400, 3000, '2022-08-16 14:00:48'),
(139, '1660658499390', 145, 1, 2, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-18', '2022-08-19', NULL, NULL, NULL, NULL, NULL, NULL, 3000, '2022-08-16 14:01:39'),
(140, '1660659965088', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-09-20', '2022-09-21', NULL, NULL, NULL, NULL, NULL, NULL, 4100, '2022-08-16 14:26:05'),
(141, '1660659965088', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 1, '2022-09-20', 1200, 4100, '2022-08-16 14:26:05'),
(142, '1660660184152', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-09-20', '2022-09-21', NULL, NULL, NULL, NULL, NULL, NULL, 4200, '2022-08-16 14:29:44'),
(143, '1660660184152', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 1, '2022-09-20', 1200, 4200, '2022-08-16 14:29:44'),
(144, '1660660396222', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-09-20', '2022-09-21', NULL, NULL, NULL, NULL, NULL, NULL, 4200, '2022-08-16 14:33:16'),
(145, '1660660396222', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 1, '2022-09-20', 1200, 4200, '2022-08-16 14:33:16'),
(146, '1660660525833', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-09-20', '2022-09-21', NULL, NULL, NULL, NULL, NULL, NULL, 4200, '2022-08-16 14:35:25'),
(147, '1660660525833', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 1, '2022-09-20', 1200, 4200, '2022-08-16 14:35:25'),
(148, '1660660762239', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-09-21', '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, 2900, '2022-08-16 14:39:22'),
(149, '1660660762239', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 1, '2022-09-20', 1200, 2900, '2022-08-16 14:39:22'),
(150, '1660660830320', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-09-21', '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, 3000, '2022-08-16 14:40:30'),
(151, '1660660929979', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-26', '2022-08-27', NULL, NULL, NULL, NULL, NULL, NULL, 3000, '2022-08-16 14:42:09'),
(152, '1660661017366', 145, 1, 4, 0, 13000, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-09-29', '2022-09-30', NULL, NULL, NULL, NULL, NULL, NULL, 15300, '2022-03-14 14:43:37'),
(153, '1660661017366', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 2, '2022-08-31', 2400, 15300, '2022-03-14 14:43:37'),
(154, '1660662231954', 145, 1, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-09-29', '2022-09-30', NULL, NULL, NULL, NULL, NULL, NULL, 15400, '2022-02-01 15:03:51'),
(155, '1660662231954', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 2, '2022-08-31', 2400, 15400, '2022-02-01 15:03:51'),
(156, '1660698866635', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-19', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, 3000, '2021-12-01 01:14:26'),
(157, '1660699372893', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-19', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, 2900, '2022-08-17 01:22:52'),
(158, '1660700459012', 145, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-08-19', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, 21000, '2022-08-17 01:40:59'),
(159, '1660700459012', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 15, '2022-08-19', 18000, 21000, '2022-08-17 01:40:59'),
(160, '1660701425580', 145, 1, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '1', '2022-09-08', '2022-09-09', NULL, NULL, NULL, NULL, NULL, NULL, 18800, '2022-08-17 01:57:05'),
(161, '1660701425580', 145, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 5, '2022-08-19', 6000, 18800, '2022-08-17 01:57:05');

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
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
