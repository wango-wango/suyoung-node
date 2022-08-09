-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 09 日 05:03
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
-- 資料表結構 `admin_list`
--

CREATE TABLE `admin_list` (
  `admin_id` int(11) NOT NULL,
  `admin_account` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `admin_list`
--

INSERT INTO `admin_list` (`admin_id`, `admin_account`, `admin_password`) VALUES
(1, 'YenYu', 'YenYu');

-- --------------------------------------------------------

--
-- 資料表結構 `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_discount` varchar(255) NOT NULL,
  `discount_name` varchar(255) DEFAULT NULL,
  `discount_number` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `create_date` datetime NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_discount`, `discount_name`, `discount_number`, `start_date`, `expire_date`, `create_date`, `room_id`) VALUES
(1, '0.85', '訂單85折優惠', 'YOUNG85', '2022-06-25', '2022-09-10', '2022-07-01 11:26:54', 0),
(2, '500', '訂單折扣500元優惠', 'WELCOMESHU', '2022-07-06', '2022-09-30', '2022-07-01 11:28:16', 0),
(3, '0.9', '訂單9折優惠', 'SHUYOUNG99', '2022-07-07', '2022-10-12', '2022-07-01 11:30:52', 0),
(5, '100', '新會員100元折價優惠', 'CAMP100', '2022-08-22', '2022-11-13', '2022-08-08 08:28:34', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `credit_card`
--

CREATE TABLE `credit_card` (
  `card_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `diary_share`
--

CREATE TABLE `diary_share` (
  `diary_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `share_time` datetime NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `share_content` longtext NOT NULL,
  `create_at` datetime NOT NULL,
  `activity_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `diary_share`
--

INSERT INTO `diary_share` (`diary_id`, `m_id`, `share_time`, `room_type`, `share_content`, `create_at`, `activity_type`) VALUES
(1, 1, '2022-07-01 11:49:52', '1', '房型1好貴', '2022-07-01 11:49:52', '');

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
(24, 143, '1', '1'),
(25, 143, '1', '2'),
(26, 143, '1', '3'),
(27, 143, '1', '4'),
(28, 127, '1', '1'),
(29, 127, '1', '2'),
(32, 127, '1', '4');

-- --------------------------------------------------------

--
-- 資料表結構 `favlist_type`
--

CREATE TABLE `favlist_type` (
  `favlist_type_id` int(11) NOT NULL,
  `favlist_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `favlist_type`
--

INSERT INTO `favlist_type` (`favlist_type_id`, `favlist_type_name`) VALUES
(1, '房型'),
(2, '食譜'),
(3, '活動');

-- --------------------------------------------------------

--
-- 資料表結構 `memberdata`
--

CREATE TABLE `memberdata` (
  `m_id` int(11) NOT NULL,
  `m_last_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_passwd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_birthday` date DEFAULT NULL,
  `m_level` enum('admin','member','VIP') COLLATE utf8_unicode_ci DEFAULT 'member',
  `m_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_score` int(11) NOT NULL DEFAULT 0,
  `m_google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_google_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `memberdata`
--

INSERT INTO `memberdata` (`m_id`, `m_last_name`, `m_first_name`, `m_username`, `m_passwd`, `m_birthday`, `m_level`, `m_email`, `m_phone`, `m_avatar`, `m_score`, `m_google_id`, `m_google_username`, `m_zip_code`, `m_city`, `m_area`, `m_addr`, `create_at`) VALUES
(1, '五十嵐真貴', NULL, 'admin', '$2y$10$FO70lc.3/vTeE0Vaf7O3Jes.UArylzLnnxfZffTF7410vndnvhScm', '1998-05-05', 'member', '505050@gmail.com', '0912505050', '50.png', 500, NULL, NULL, '116', '台北市', '文山區', '地址', '0000-00-00'),
(2, '張惠玲', NULL, 'elven', '$2y$10$YdUhOvUTvwK5oWp/i3LafOd2ImwsE/85YmmoY2konsxdmMSsvczFO', '1987-04-05', 'member', 'elven@superstar.com', '0966765556', 'D5f_bs_UIAANqHk.jpeg', 3000, NULL, NULL, '', '', '', '', '0000-00-00'),
(3, '彭建志', NULL, 'jinglun', '$2y$10$WqB2bnMSO/wgBiHSOBV2iuLbrUCsp8VmNJdK2AyIW6IANUL9jeFjC', '1987-07-01', 'member', 'jinglun@superstar.com', '0918181111', 'D5f_bs-UwAE-vxf.jpeg', 1500, NULL, NULL, '', '', '', '', '0000-00-00'),
(4, '謝耿鴻', NULL, 'sugie', '$2y$10$6uWtdYATI3b/wMRk.AaqIei852PLf.WjeKm8X.Asl0VTmpxCkqbW6', '1987-08-11', 'VIP', 'edreamer@gmail.com', '0914530768', 'yellowcat.png', 7000, NULL, NULL, '', '', '', '', '0000-00-00'),
(5, '蔣志明', NULL, 'shane', '$2y$10$pWefN9xkeXOKCx59GF6ZJuSGNnIFBY4q/DCmCvAwOFtnoTCujb3Te', '1984-06-20', 'member', 'shane@superstar.com', '0946820035', '7c273f22-68e2-4c3f-bb28-cfb9c904db6b.png', 3000, NULL, NULL, '', '', '', '', '0000-00-00'),
(6, '王佩珊', NULL, 'ivy', '$2y$10$RPrt3YfaSs0d82inYIK6he.JaPqOrisWMqASuxN5g62EyRio.lyEa', '1988-02-15', 'VIP', 'ivy@superstar.com', '0920981230', 'anya.png', 15000, NULL, NULL, '', '', '', '', '0000-00-00'),
(7, '林志宇', NULL, 'zhong', '$2y$10$pee.jvO6f4sSKahlc4cLLO9RUMyx8aphyqkSUdwHTNSy4Ax7YPdpq', '1987-05-05', 'VIP', 'zhong@superstar.com', '0951983366', 'HrNlUNP.jpeg', 14976, NULL, NULL, '', '', '', '', '0000-00-00'),
(8, '李曉薇', NULL, 'lala', '$2y$10$oiC9CaGiOdWu.6w5b3.b/Ora6fSuh8Lrbj8Kg5BUPT15O3QptksQS', '1985-08-30', 'member', 'lala@superstar.com', '0918123456', '9b86d7ceab3f9e2f0f543ab6f0f1ae62.jpeg', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(9, '賴秀英', NULL, 'crystal', '$2y$10$8Q0.JEGILRM91qAlMmWnB.wpcY.rJEbgNgV5ntIlqZmdGaHPwikji', '1986-12-10', 'member', 'crystal@superstar.com', '0907408965', '467d353f7e2d43563ce13fddbb213709.gif', 796, NULL, NULL, '', '', '', '', '0000-00-00'),
(10, '張雅琪', NULL, 'peggy', '$2y$10$RNqnXDNHkcTI2Zh2bkTKnOesz0FLXhihhT8ZL8OHoMeYSq7jsILMi', '1988-12-01', 'member', 'peggy@superstar.com', '0916456723', 'b51e871af241a73ab319ed5e00ec61ae.jpeg', 980, NULL, NULL, '', '', '', '', '0000-00-00'),
(11, '陳燕博', NULL, 'albert', '$2y$10$seMLwqcQRQiWa0jMBAcMMertjLbrPLRGNZoKc0NZ5FxTwWha7W3lm', '1993-08-10', 'VIP', 'albert@superstar.com', '0918976588', 'd44445a8f9519816229cc4352ba1b662.jpeg', 8590, NULL, NULL, '', '', '', '', '0000-00-00'),
(13, '黃信溢', NULL, 'dkdreamer', '$2y$10$Fx0rLJtV5mVtJzAJ52B/hup1AmviTe7Ciu0mtWBCZAkYC0qmg6OJy', '1987-04-05', 'member', 'edreamer@gmail.com', '955648889', 'd632ace1c221d953065afb4e6ad9f918.gif', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(126, 'penpen', NULL, 'penpen', '$2y$10$Oj9N8ZsZ/N0S4aK1eLbMO.GgF8U/DEISqoy/zmIAQeKpR9bzveYf2', '2022-06-15', 'member', '123@test.com', '0912345677', 'e07e97b395c35aef13fc8e7d3c85e8e0.jpg', 499, NULL, NULL, '', '', '', '', '0000-00-00'),
(127, '林', '熊熊', 'bearbear', '$2y$10$eit5KXibqdyKwEjbmuuMo.Gn9EmjaUEesHazj7N2Tb0wNuAPzjA1a', '2022-05-14', 'VIP', '123@test.com', '0912345678', 'http://localhost:3700/avatar_img/66666.jpg', 9600, NULL, NULL, '', '5', '4', '北門路一段12號1樓', '2020-01-08'),
(132, '把餔啦', NULL, 'babula', '$2y$10$E1B/ArdG.nFLqj12Lrvtzua5knNV0Ip41Dh3HXMLqWmAU4govZZaq', '1999-02-01', 'member', '123@test.com', '0912345678', 'ee507b30b411b403711f28f6d0578ede.jpg', 300, NULL, NULL, '', '', '', '', '0000-00-00'),
(133, '浪漫duke', NULL, 'duke', '$2y$10$UHOPdQTJNklqO4KSqwj.N.UCOO7s21fZJNNorMt1zvOJNK2t.8UW2', '2022-06-09', 'member', '1234@test.com', '0912345678', '799512d800f9ba0a2c98e1060e391285.png', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(135, '大傑', NULL, 'jayjay', '$2y$10$cjCLBa/ld6MuIUWQdU5vMu/giVAxkJ.NNXMtFA9P2IoOr7z3Z6wdS', '1995-05-08', 'member', 'jayjay@gmail.com', '0936290633', '97cba2154af92cda4d015998eb47ed29.jpg', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(137, NULL, NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, 0, '107575394789859619164', '林新德', '', '', '', '', '0000-00-00'),
(141, NULL, NULL, 'BEAR', NULL, NULL, 'member', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(143, '陳', '小明', 'yyyyy', '$2a$10$uKq8U47573Tq8W64Oofl4utXU/2JZ/3/g3IAltUkxeLNbg.ogaEKC', '2021-09-21', 'member', 'yyyy@gmail.com', '0912345678', 'http://localhost:3700/avatar_img/5555555.png', 0, NULL, NULL, NULL, '3', '2', '555555', '2022-08-05'),
(144, '許', '純美', 'weeed', '$2a$10$PWkRZiLThcE8q1TIVuY2euSjROjuo807WN7TvaVPlvtWocsHowutO', '2001-02-05', 'member', 'weed@gmail.com', '0912456788', 'http://localhost:3700/avatar_img/W9gIYt4h.jpeg', 0, NULL, NULL, NULL, '5', '8', '竹科園區', '2022-08-05');

-- --------------------------------------------------------

--
-- 資料表結構 `member_coupon`
--

CREATE TABLE `member_coupon` (
  `sid` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 1,
  `coupon_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `member_coupon`
--

INSERT INTO `member_coupon` (`sid`, `m_id`, `coupon_id`, `coupon_status`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 1),
(3, 1, 2, 0),
(4, 1, 3, 0),
(5, 127, 3, 0),
(6, 127, 5, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `share_pic`
--

CREATE TABLE `share_pic` (
  `picture_id` int(11) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `pic_filename` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `share_pic`
--

INSERT INTO `share_pic` (`picture_id`, `diary_id`, `pic_filename`, `create_date`) VALUES
(1, 1, '123.jpg', '2022-07-01 12:05:29');

-- --------------------------------------------------------

--
-- 資料表結構 `zipcode`
--

CREATE TABLE `zipcode` (
  `Id` bigint(20) NOT NULL,
  `City` varchar(10) NOT NULL DEFAULT '',
  `Area` varchar(10) NOT NULL DEFAULT '',
  `ZipCode` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `zipcode`
--

INSERT INTO `zipcode` (`Id`, `City`, `Area`, `ZipCode`) VALUES
(1, '台北市', '中正區', '100'),
(2, '台北市', '大同區', '103'),
(3, '台北市', '中山區', '104'),
(4, '台北市', '松山區', '105'),
(5, '台北市', '大安區', '106'),
(6, '台北市', '萬華區', '108'),
(7, '台北市', '信義區', '110'),
(8, '台北市', '士林區', '111'),
(9, '台北市', '北投區', '112'),
(10, '台北市', '內湖區', '114'),
(11, '台北市', '南港區', '115'),
(12, '台北市', '文山區', '116'),
(13, '基隆市', '仁愛區', '200'),
(14, '基隆市', '信義區', '201'),
(15, '基隆市', '中正區', '202'),
(16, '基隆市', '中山區', '203'),
(17, '基隆市', '安樂區', '204'),
(18, '基隆市', '暖暖區', '205'),
(19, '基隆市', '七堵區', '206'),
(20, '新北市', '萬里區', '207'),
(21, '新北市', '金山區', '208'),
(22, '新北市', '板橋區', '220'),
(23, '新北市', '汐止區', '221'),
(24, '新北市', '深坑區', '222'),
(25, '新北市', '石碇區', '223'),
(26, '新北市', '瑞芳區', '224'),
(27, '新北市', '平溪區', '226'),
(28, '新北市', '雙溪區', '227'),
(29, '新北市', '貢寮區', '228'),
(30, '新北市', '新店區', '231'),
(31, '新北市', '坪林區', '232'),
(32, '新北市', '烏來區', '233'),
(33, '新北市', '永和區', '234'),
(34, '新北市', '中和區', '235'),
(35, '新北市', '土城區', '236'),
(36, '新北市', '三峽區', '237'),
(37, '新北市', '樹林區', '238'),
(38, '新北市', '鶯歌區', '239'),
(39, '新北市', '三重區', '241'),
(40, '新北市', '新莊區', '242'),
(41, '新北市', '泰山區', '243'),
(42, '新北市', '林口區', '244'),
(43, '新北市', '蘆洲區', '247'),
(44, '新北市', '五股區', '248'),
(45, '新北市', '八里區', '249'),
(46, '新北市', '淡水區', '251'),
(47, '新北市', '三芝區', '252'),
(48, '新北市', '石門區', '253'),
(49, '宜蘭縣', '宜蘭市', '260'),
(50, '宜蘭縣', '頭城鎮', '261'),
(51, '宜蘭縣', '礁溪鄉', '262'),
(52, '宜蘭縣', '壯圍鄉', '263'),
(53, '宜蘭縣', '員山鄉', '264'),
(54, '宜蘭縣', '羅東鎮', '265'),
(55, '宜蘭縣', '三星鄉', '266'),
(56, '宜蘭縣', '大同鄉', '267'),
(57, '宜蘭縣', '五結鄉', '268'),
(58, '宜蘭縣', '冬山鄉', '269'),
(59, '宜蘭縣', '蘇澳鎮', '270'),
(60, '宜蘭縣', '南澳鄉', '272'),
(61, '宜蘭縣', '釣魚台列嶼', '290'),
(62, '新竹市', '', '300'),
(63, '新竹縣', '竹北市', '302'),
(64, '新竹縣', '湖口鄉', '303'),
(65, '新竹縣', '新豐鄉', '304'),
(66, '新竹縣', '新埔鎮', '305'),
(67, '新竹縣', '關西鎮', '306'),
(68, '新竹縣', '芎林鄉', '307'),
(69, '新竹縣', '寶山鄉', '308'),
(70, '新竹縣', '竹東鎮', '310'),
(71, '新竹縣', '五峰鄉', '311'),
(72, '新竹縣', '橫山鄉', '312'),
(73, '新竹縣', '尖石鄉', '313'),
(74, '新竹縣', '北埔鄉', '314'),
(75, '新竹縣', '峨眉鄉', '315'),
(76, '桃園縣', '中壢市', '320'),
(77, '桃園縣', '平鎮市', '324'),
(78, '桃園縣', '龍潭鄉', '325'),
(79, '桃園縣', '楊梅市', '326'),
(80, '桃園縣', '新屋鄉', '327'),
(81, '桃園縣', '觀音鄉', '328'),
(82, '桃園縣', '桃園市', '330'),
(83, '桃園縣', '龜山鄉', '333'),
(84, '桃園縣', '八德市', '334'),
(85, '桃園縣', '大溪鎮', '335'),
(86, '桃園縣', '復興鄉', '336'),
(87, '桃園縣', '大園鄉', '337'),
(88, '桃園縣', '蘆竹鄉', '338'),
(89, '苗栗縣', '竹南鎮', '350'),
(90, '苗栗縣', '頭份鎮', '351'),
(91, '苗栗縣', '三灣鄉', '352'),
(92, '苗栗縣', '南庄鄉', '353'),
(93, '苗栗縣', '獅潭鄉', '354'),
(94, '苗栗縣', '後龍鎮', '356'),
(95, '苗栗縣', '通霄鎮', '357'),
(96, '苗栗縣', '苑裡鎮', '358'),
(97, '苗栗縣', '苗栗市', '360'),
(98, '苗栗縣', '造橋鄉', '361'),
(99, '苗栗縣', '頭屋鄉', '362'),
(100, '苗栗縣', '公館鄉', '363'),
(101, '苗栗縣', '大湖鄉', '364'),
(102, '苗栗縣', '泰安鄉', '365'),
(103, '苗栗縣', '銅鑼鄉', '366'),
(104, '苗栗縣', '三義鄉', '367'),
(105, '苗栗縣', '西湖鄉', '368'),
(106, '苗栗縣', '卓蘭鎮', '369'),
(107, '台中市', '中區', '400'),
(108, '台中市', '東區', '401'),
(109, '台中市', '南區', '402'),
(110, '台中市', '西區', '403'),
(111, '台中市', '北區', '404'),
(112, '台中市', '北屯區', '406'),
(113, '台中市', '西屯區', '407'),
(114, '台中市', '南屯區', '408'),
(115, '台中市', '太平區', '411'),
(116, '台中市', '大里區', '412'),
(117, '台中市', '霧峰區', '413'),
(118, '台中市', '烏日區', '414'),
(119, '台中市', '豐原區', '420'),
(120, '台中市', '后里區', '421'),
(121, '台中市', '石岡區', '422'),
(122, '台中市', '東勢區', '423'),
(123, '台中市', '和平區', '424'),
(124, '台中市', '新社區', '426'),
(125, '台中市', '潭子區', '427'),
(126, '台中市', '大雅區', '428'),
(127, '台中市', '神岡區', '429'),
(128, '台中市', '大肚區', '432'),
(129, '台中市', '沙鹿區', '433'),
(130, '台中市', '龍井區', '434'),
(131, '台中市', '梧棲區', '435'),
(132, '台中市', '清水區', '436'),
(133, '台中市', '大甲區', '437'),
(134, '台中市', '外埔區', '438'),
(135, '台中市', '大安區', '439'),
(136, '彰化縣', '彰化市', '500'),
(137, '彰化縣', '芬園鄉', '502'),
(138, '彰化縣', '花壇鄉', '503'),
(139, '彰化縣', '秀水鄉', '504'),
(140, '彰化縣', '鹿港鎮', '505'),
(141, '彰化縣', '福興鄉', '506'),
(142, '彰化縣', '線西鄉', '507'),
(143, '彰化縣', '和美鎮', '508'),
(144, '彰化縣', '伸港鄉', '509'),
(145, '彰化縣', '員林鎮', '510'),
(146, '彰化縣', '社頭鄉', '511'),
(147, '彰化縣', '永靖鄉', '512'),
(148, '彰化縣', '埔心鄉', '513'),
(149, '彰化縣', '溪湖鎮', '514'),
(150, '彰化縣', '大村鄉', '515'),
(151, '彰化縣', '埔鹽鄉', '516'),
(152, '彰化縣', '田中鎮', '520'),
(153, '彰化縣', '北斗鎮', '521'),
(154, '彰化縣', '田尾鄉', '522'),
(155, '彰化縣', '埤頭鄉', '523'),
(156, '彰化縣', '溪州鄉', '524'),
(157, '彰化縣', '竹塘鄉', '525'),
(158, '彰化縣', '二林鎮', '526'),
(159, '彰化縣', '大城鄉', '527'),
(160, '彰化縣', '芳苑鄉', '528'),
(161, '彰化縣', '二水鄉', '530'),
(162, '南投縣', '南投市', '540'),
(163, '南投縣', '中寮鄉', '541'),
(164, '南投縣', '草屯鎮', '542'),
(165, '南投縣', '國姓鄉', '544'),
(166, '南投縣', '埔里鎮', '545'),
(167, '南投縣', '仁愛鄉', '546'),
(168, '南投縣', '名間鄉', '551'),
(169, '南投縣', '集集鎮', '552'),
(170, '南投縣', '水里鄉', '553'),
(171, '南投縣', '魚池鄉', '555'),
(172, '南投縣', '信義鄉', '556'),
(173, '南投縣', '竹山鎮', '557'),
(174, '南投縣', '鹿谷鄉', '558'),
(175, '雲林縣', '斗南鎮', '630'),
(176, '雲林縣', '大埤鄉', '631'),
(177, '雲林縣', '虎尾鎮', '632'),
(178, '雲林縣', '土庫鎮', '633'),
(179, '雲林縣', '褒忠鄉', '634'),
(180, '雲林縣', '東勢鄉', '635'),
(181, '雲林縣', '臺西鄉', '636'),
(182, '雲林縣', '崙背鄉', '637'),
(183, '雲林縣', '麥寮鄉', '638'),
(184, '雲林縣', '斗六市', '640'),
(185, '雲林縣', '林內鄉', '643'),
(186, '雲林縣', '古坑鄉', '646'),
(187, '雲林縣', '莿桐鄉', '647'),
(188, '雲林縣', '西螺鎮', '648'),
(189, '雲林縣', '二崙鄉', '649'),
(190, '雲林縣', '北港鎮', '651'),
(191, '雲林縣', '水林鄉', '652'),
(192, '雲林縣', '口湖鄉', '653'),
(193, '雲林縣', '四湖鄉', '654'),
(194, '雲林縣', '元長鄉', '655'),
(195, '嘉義市', '', '600'),
(196, '嘉義縣', '番路鄉', '602'),
(197, '嘉義縣', '梅山鄉', '603'),
(198, '嘉義縣', '竹崎鄉', '604'),
(199, '嘉義縣', '阿里山鄉', '605'),
(200, '嘉義縣', '中埔鄉', '606'),
(201, '嘉義縣', '大埔鄉', '607'),
(202, '嘉義縣', '水上鄉', '608'),
(203, '嘉義縣', '鹿草鄉', '611'),
(204, '嘉義縣', '太保市', '612'),
(205, '嘉義縣', '朴子市', '613'),
(206, '嘉義縣', '東石鄉', '614'),
(207, '嘉義縣', '六腳鄉', '615'),
(208, '嘉義縣', '新港鄉', '616'),
(209, '嘉義縣', '民雄鄉', '621'),
(210, '嘉義縣', '大林鎮', '622'),
(211, '嘉義縣', '溪口鄉', '623'),
(212, '嘉義縣', '義竹鄉', '624'),
(213, '嘉義縣', '布袋鎮', '625'),
(214, '台南市', '中西區', '700'),
(215, '台南市', '東區', '701'),
(216, '台南市', '南區', '702'),
(217, '台南市', '北區', '704'),
(218, '台南市', '安平區', '708'),
(219, '台南市', '安南區', '709'),
(220, '台南市', '永康區', '710'),
(221, '台南市', '歸仁區', '711'),
(222, '台南市', '新化區', '712'),
(223, '台南市', '左鎮區', '713'),
(224, '台南市', '玉井區', '714'),
(225, '台南市', '楠西區', '715'),
(226, '台南市', '南化區', '716'),
(227, '台南市', '仁德區', '717'),
(228, '台南市', '關廟區', '718'),
(229, '台南市', '龍崎區', '719'),
(230, '台南市', '官田區', '720'),
(231, '台南市', '麻豆區', '721'),
(232, '台南市', '佳里區', '722'),
(233, '台南市', '西港區', '723'),
(234, '台南市', '七股區', '724'),
(235, '台南市', '將軍區', '725'),
(236, '台南市', '學甲區', '726'),
(237, '台南市', '北門區', '727'),
(238, '台南市', '新營區', '730'),
(239, '台南市', '後壁區', '731'),
(240, '台南市', '白河區', '732'),
(241, '台南市', '東山區', '733'),
(242, '台南市', '六甲區', '734'),
(243, '台南市', '下營區', '735'),
(244, '台南市', '柳營區', '736'),
(245, '台南市', '鹽水區', '737'),
(246, '台南市', '善化區', '741'),
(247, '台南市', '大內區', '742'),
(248, '台南市', '山上區', '743'),
(249, '台南市', '新市區', '744'),
(250, '台南市', '安定區', '745'),
(251, '高雄市', '新興區', '800'),
(252, '高雄市', '前金區', '801'),
(253, '高雄市', '苓雅區', '802'),
(254, '高雄市', '鹽埕區', '803'),
(255, '高雄市', '鼓山區', '804'),
(256, '高雄市', '旗津區', '805'),
(257, '高雄市', '前鎮區', '806'),
(258, '高雄市', '三民區', '807'),
(259, '高雄市', '楠梓區', '811'),
(260, '高雄市', '小港區', '812'),
(261, '高雄市', '左營區', '813'),
(262, '高雄市', '仁武區', '814'),
(263, '高雄市', '大社區', '815'),
(264, '高雄市', '岡山區', '820'),
(265, '高雄市', '路竹區', '821'),
(266, '高雄市', '阿蓮區', '822'),
(267, '高雄市', '田寮區', '823'),
(268, '高雄市', '燕巢區', '824'),
(269, '高雄市', '橋頭區', '825'),
(270, '高雄市', '梓官區', '826'),
(271, '高雄市', '彌陀區', '827'),
(272, '高雄市', '永安區', '828'),
(273, '高雄市', '湖內區', '829'),
(274, '高雄市', '鳳山區', '830'),
(275, '高雄市', '大寮區', '831'),
(276, '高雄市', '林園區', '832'),
(277, '高雄市', '鳥松區', '833'),
(278, '高雄市', '大樹區', '840'),
(279, '高雄市', '旗山區', '842'),
(280, '高雄市', '美濃區', '843'),
(281, '高雄市', '六龜區', '844'),
(282, '高雄市', '內門區', '845'),
(283, '高雄市', '杉林區', '846'),
(284, '高雄市', '甲仙區', '847'),
(285, '高雄市', '桃源區', '848'),
(286, '高雄市', '那瑪夏區', '849'),
(287, '高雄市', '茂林區', '851'),
(288, '高雄市', '茄萣區', '852'),
(289, '南海諸島', '東沙', '817'),
(290, '南海諸島', '南沙', '819'),
(291, '澎湖縣', '馬公市', '880'),
(292, '澎湖縣', '西嶼鄉', '881'),
(293, '澎湖縣', '望安鄉', '882'),
(294, '澎湖縣', '七美鄉', '883'),
(295, '澎湖縣', '白沙鄉', '884'),
(296, '澎湖縣', '湖西鄉', '885'),
(297, '屏東縣', '屏東市', '900'),
(298, '屏東縣', '三地門鄉', '901'),
(299, '屏東縣', '霧臺鄉', '902'),
(300, '屏東縣', '瑪家鄉', '903'),
(301, '屏東縣', '九如鄉', '904'),
(302, '屏東縣', '里港鄉', '905'),
(303, '屏東縣', '高樹鄉', '906'),
(304, '屏東縣', '鹽埔鄉', '907'),
(305, '屏東縣', '長治鄉', '908'),
(306, '屏東縣', '麟洛鄉', '909'),
(307, '屏東縣', '竹田鄉', '911'),
(308, '屏東縣', '內埔鄉', '912'),
(309, '屏東縣', '萬丹鄉', '913'),
(310, '屏東縣', '潮州鎮', '920'),
(311, '屏東縣', '泰武鄉', '921'),
(312, '屏東縣', '來義鄉', '922'),
(313, '屏東縣', '萬巒鄉', '923'),
(314, '屏東縣', '崁頂鄉', '924'),
(315, '屏東縣', '新埤鄉', '925'),
(316, '屏東縣', '南州鄉', '926'),
(317, '屏東縣', '林邊鄉', '927'),
(318, '屏東縣', '東港鄉', '928'),
(319, '屏東縣', '琉球鄉', '929'),
(320, '屏東縣', '佳冬鄉', '931'),
(321, '屏東縣', '新園鄉', '932'),
(322, '屏東縣', '枋寮鄉', '940'),
(323, '屏東縣', '枋山鄉', '941'),
(324, '屏東縣', '春日鄉', '942'),
(325, '屏東縣', '獅子鄉', '943'),
(326, '屏東縣', '車城鄉', '944'),
(327, '屏東縣', '牡丹鄉', '945'),
(328, '屏東縣', '恆春鄉', '946'),
(329, '屏東縣', '滿州鄉', '947'),
(330, '台東縣', '臺東市', '950'),
(331, '台東縣', '綠島鄉', '951'),
(332, '台東縣', '蘭嶼鄉', '952'),
(333, '台東縣', '延平鄉', '953'),
(334, '台東縣', '卑南鄉', '954'),
(335, '台東縣', '鹿野鄉', '955'),
(336, '台東縣', '關山鎮', '956'),
(337, '台東縣', '海端鄉', '957'),
(338, '台東縣', '池上鄉', '958'),
(339, '台東縣', '東河鄉', '959'),
(340, '台東縣', '成功鎮', '961'),
(341, '台東縣', '長濱鄉', '962'),
(342, '台東縣', '太麻里鄉', '963'),
(343, '台東縣', '金峰鄉', '964'),
(344, '台東縣', '大武鄉', '965'),
(345, '台東縣', '達仁鄉', '966'),
(346, '花蓮縣', '花蓮市', '970'),
(347, '花蓮縣', '新城鄉', '971'),
(348, '花蓮縣', '秀林鄉', '972'),
(349, '花蓮縣', '吉安鄉', '973'),
(350, '花蓮縣', '壽豐鄉', '974'),
(351, '花蓮縣', '鳳林鎮', '975'),
(352, '花蓮縣', '光復鄉', '976'),
(353, '花蓮縣', '豐濱鄉', '977'),
(354, '花蓮縣', '瑞穗鄉', '978'),
(355, '花蓮縣', '萬榮鄉', '979'),
(356, '花蓮縣', '玉里鎮', '981'),
(357, '花蓮縣', '卓溪鄉', '982'),
(358, '花蓮縣', '富里鄉', '983'),
(359, '金門縣', '金沙鎮', '890'),
(360, '金門縣', '金湖鎮', '891'),
(361, '金門縣', '金寧鄉', '892'),
(362, '金門縣', '金城鎮', '893'),
(363, '金門縣', '烈嶼鄉', '894'),
(364, '金門縣', '烏坵鄉', '896'),
(365, '連江縣', '南竿鄉', '209'),
(366, '連江縣', '北竿鄉', '210'),
(367, '連江縣', '莒光鄉', '211'),
(368, '連江縣', '東引鄉', '212');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin_list`
--
ALTER TABLE `admin_list`
  ADD PRIMARY KEY (`admin_id`);

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- 資料表索引 `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`card_id`);

--
-- 資料表索引 `diary_share`
--
ALTER TABLE `diary_share`
  ADD PRIMARY KEY (`diary_id`);

--
-- 資料表索引 `favlist`
--
ALTER TABLE `favlist`
  ADD PRIMARY KEY (`favlist_id`);

--
-- 資料表索引 `favlist_type`
--
ALTER TABLE `favlist_type`
  ADD PRIMARY KEY (`favlist_type_id`);

--
-- 資料表索引 `memberdata`
--
ALTER TABLE `memberdata`
  ADD PRIMARY KEY (`m_id`),
  ADD UNIQUE KEY `m_username` (`m_username`),
  ADD KEY `m_email` (`m_email`),
  ADD KEY `m_phone` (`m_phone`);

--
-- 資料表索引 `member_coupon`
--
ALTER TABLE `member_coupon`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `share_pic`
--
ALTER TABLE `share_pic`
  ADD PRIMARY KEY (`picture_id`);

--
-- 資料表索引 `zipcode`
--
ALTER TABLE `zipcode`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `City` (`City`,`Area`,`ZipCode`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin_list`
--
ALTER TABLE `admin_list`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `credit_card`
--
ALTER TABLE `credit_card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `diary_share`
--
ALTER TABLE `diary_share`
  MODIFY `diary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favlist`
--
ALTER TABLE `favlist`
  MODIFY `favlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favlist_type`
--
ALTER TABLE `favlist_type`
  MODIFY `favlist_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `memberdata`
--
ALTER TABLE `memberdata`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_coupon`
--
ALTER TABLE `member_coupon`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `share_pic`
--
ALTER TABLE `share_pic`
  MODIFY `picture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `zipcode`
--
ALTER TABLE `zipcode`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
