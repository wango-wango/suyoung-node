-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-08 19:35:20
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `suyoung_recipes`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cart_order`
--

CREATE TABLE `cart_order` (
  `sid` int(11) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  `ingredient` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `photowall`
--

CREATE TABLE `photowall` (
  `sid` int(11) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `post_time` int(11) NOT NULL,
  `post_img` varchar(255) NOT NULL,
  `hashtag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `recipes`
--

CREATE TABLE `recipes` (
  `sid` int(11) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  `res_img` varchar(255) NOT NULL,
  `ingredient` varchar(255) NOT NULL,
  `cook_time` varchar(255) NOT NULL,
  `serves` varchar(255) NOT NULL,
  `tool` varchar(255) NOT NULL,
  `recipe_type` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `collect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `tutorial`
--

CREATE TABLE `tutorial` (
  `sid` int(11) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  `step1` varchar(255) NOT NULL,
  `step1_img` varchar(255) NOT NULL,
  `step1_time` int(11) NOT NULL,
  `step2` varchar(255) NOT NULL,
  `step2_img` varchar(255) NOT NULL,
  `step2_time` int(11) NOT NULL,
  `step3` varchar(255) NOT NULL,
  `step3_img` varchar(255) NOT NULL,
  `step3_time` int(11) NOT NULL,
  `step4` varchar(255) NOT NULL,
  `step4_img` varchar(255) NOT NULL,
  `step4_time` int(11) NOT NULL,
  `step5` varchar(255) NOT NULL,
  `step5_img` varchar(255) NOT NULL,
  `step5_time` int(11) NOT NULL,
  `step6` varchar(255) NOT NULL,
  `step6_img` varchar(255) NOT NULL,
  `step6_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `wallreply`
--

CREATE TABLE `wallreply` (
  `sid` int(11) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `reply` varchar(255) NOT NULL,
  `reply_time` int(11) NOT NULL,
  `love` int(11) NOT NULL,
  `love_frequency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cart_order`
--
ALTER TABLE `cart_order`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `photowall`
--
ALTER TABLE `photowall`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `collect` (`collect`);

--
-- 資料表索引 `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `wallreply`
--
ALTER TABLE `wallreply`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_order`
--
ALTER TABLE `cart_order`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `photowall`
--
ALTER TABLE `photowall`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipes`
--
ALTER TABLE `recipes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `wallreply`
--
ALTER TABLE `wallreply`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
