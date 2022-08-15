-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 11 日 09:48
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
  `order_id` int(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `adults` int(11) NOT NULL,
  `kids` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_folder` varchar(100) NOT NULL,
  `room_image` varchar(100) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `member_id`, `adults`, `kids`, `totalPrice`, `room_id`, `room_type_id`, `room_folder`, `room_image`, `room_name`, `start_date`, `end_date`, `create_at`) VALUES
(1, 127, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '2022-08-12', '2022-08-13', '2022-08-10 16:00:00'),
(2, 145, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '2022-08-12', '2022-08-13', '2022-08-11 03:43:27'),
(3, 145, 4, 0, 4800, 7, 3, 'van', 'campingVan_B1.jpeg', '賞星露營車', '2022-08-13', '2022-08-19', '2022-08-11 03:43:27'),
(4, 145, 6, 0, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '2022-08-12', '2022-08-13', '2022-08-11 03:47:59'),
(5, 145, 6, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '2022-08-12', '2022-08-13', '2022-08-11 03:57:06'),
(6, 145, 6, 0, 800, 8, 4, 'camp', 'A1.jpeg', '木棧板區', '2022-08-12', '2022-08-13', '2022-08-11 05:18:53'),
(7, 145, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2022-08-26', '2022-08-27', '2022-08-11 05:18:53'),
(8, 145, 6, 2, 16800, 2, 1, 'beauty', 'roomE1.jpeg', '網美神殿帳', '2022-08-19', '2022-08-20', '2022-08-11 05:18:53'),
(9, 145, 6, 2, 1200, 9, 4, 'camp', 'B1.jpeg', '搭棚遮雨區', '2022-08-12', '2022-08-13', '2022-08-11 05:18:53'),
(10, 145, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2022-08-18', '2022-08-19', '2022-08-11 05:36:10'),
(11, 145, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2022-08-11', '2022-08-12', '2022-08-11 05:49:33'),
(12, 145, 8, 0, 7800, 5, 2, 'family', 'family-typeB1.jpeg', '闔家歡聚帳', '2022-11-17', '2022-11-19', '2022-08-11 06:01:00'),
(13, 145, 6, 0, 1200, 9, 4, 'camp', 'B1.jpeg', '搭棚遮雨區', '2022-08-19', '2022-08-20', '2022-08-11 06:08:47'),
(14, 145, 6, 0, 1500, 10, 4, 'camp', 'C1.jpeg', '木製屋頂區', '2022-08-12', '2022-08-13', '2022-08-11 06:55:55'),
(15, 145, 4, 0, 12800, 1, 1, 'beauty', 'roomA8.jpeg', '頂級星空帳', '2022-08-30', '2022-08-31', '2022-08-11 06:55:55'),
(16, 145, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '2022-08-26', '2022-08-27', '2022-08-11 07:18:38'),
(17, 145, 8, 0, 20800, 3, 1, 'beauty', 'roomC1.jpeg', '印第安帳', '2022-08-12', '2022-08-13', '2022-08-11 07:22:49');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
