-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 23 日 10:51
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
-- 資料庫： `shuyoung`
--

-- --------------------------------------------------------

--
-- 資料表結構 `room_reservation`
--

CREATE TABLE `room_reservation` (
  `sid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `num_adults` int(11) NOT NULL,
  `num_children` int(11) NOT NULL,
  `perNight` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `Booking_Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_reservation`
--

INSERT INTO `room_reservation` (`sid`, `member_id`, `room_id`, `room_type_id`, `num_adults`, `num_children`, `perNight`, `total_price`, `start_date`, `end_date`, `Booking_Date`) VALUES
(36, 127, 2, 1, 4, 0, 3, 16800, '2022-08-23', '2022-08-26', '2022-08-19 15:58:18'),
(37, 127, 2, 1, 4, 0, 3, 16800, '2022-08-27', '2022-08-28', '2022-08-19 15:58:18'),
(38, 127, 3, 1, 3, 0, 2, 20800, '2022-08-24', '2022-08-26', '2022-08-19 16:07:50'),
(39, 127, 3, 1, 3, 0, 2, 20800, '2022-08-27', '2022-08-28', '2022-08-19 16:07:50'),
(40, 127, 3, 1, 3, 0, 2, 20800, '2022-08-29', '2022-08-30', '2022-08-19 16:07:50'),
(41, 127, 5, 2, 5, 0, 1, 7800, '2022-08-23', '2022-08-24', '2022-08-19 16:15:37');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `room_reservation`
--
ALTER TABLE `room_reservation`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_reservation`
--
ALTER TABLE `room_reservation`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
