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
-- 資料表結構 `act_order`
--

CREATE TABLE `act_order` (
  `Sid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `act_id` int(11) NOT NULL,
  `act_l_id` int(11) NOT NULL,
  `num_people` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `act_order`
--

INSERT INTO `act_order` (`Sid`, `order_id`, `member_id`, `act_id`, `act_l_id`, `num_people`, `amount`, `order_date`) VALUES
(1, '1660586761599', 145, 5, 11, 2, 2400, '2022-09-30'),
(2, '1660625306656', 145, 5, 11, 1, 1200, '2022-08-17');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `act_order`
--
ALTER TABLE `act_order`
  ADD PRIMARY KEY (`Sid`),
  ADD KEY `member_id` (`member_id`,`act_id`),
  ADD KEY `act_l_id` (`act_l_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `act_order`
--
ALTER TABLE `act_order`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
