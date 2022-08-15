-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 12 日 19:04
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
-- 資料表結構 `temporaryCart`
--

CREATE TABLE `temporaryCart` (
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
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `temporaryCart`
--

INSERT INTO `temporaryCart` (`sid`, `member_id`, `room_id`, `room_type_id`, `num_adults`, `num_children`, `perNight`, `total_price`, `start_date`, `end_date`, `create_at`) VALUES
(1, 127, 1, 1, 5, 0, 2, 25600, '2022-08-23', '2022-08-25', '2022-08-12 17:55:05'),
(2, 127, 4, 2, 4, 2, 2, 12000, '2022-08-23', '2022-08-25', '2022-08-13 00:42:45');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `temporaryCart`
--
ALTER TABLE `temporaryCart`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `temporaryCart`
--
ALTER TABLE `temporaryCart`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
