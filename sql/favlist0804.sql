-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 04 日 08:23
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
-- 資料表結構 `favlist`
--

CREATE TABLE `favlist` (
  `favlist_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `fav_list_type` varchar(255) NOT NULL COMMENT '1=房型 2=活動 3=食譜',
  `fav_list_kind` varchar(255) NOT NULL COMMENT '房型or活動or食譜的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `favlist`
--

INSERT INTO `favlist` (`favlist_id`, `m_id`, `fav_list_type`, `fav_list_kind`) VALUES
(1, 1, '1', '10'),
(2, 1, '1', '5'),
(3, 127, '1', '1'),
(4, 127, '1', '2'),
(5, 127, '1', '3'),
(6, 127, '1', '4'),
(7, 127, '1', '5'),
(8, 127, '1', '6');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `favlist`
--
ALTER TABLE `favlist`
  ADD PRIMARY KEY (`favlist_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favlist`
--
ALTER TABLE `favlist`
  MODIFY `favlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
