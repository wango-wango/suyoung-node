-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 17 日 10:23
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
-- 資料表結構 `memberdata`
--

CREATE TABLE `memberdata` (
  `m_id` int(11) NOT NULL,
  `m_last_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_passwd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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

INSERT INTO `memberdata` (`m_id`, `m_last_name`, `m_first_name`, `m_username`, `m_passwd`, `hash_code`, `m_birthday`, `m_level`, `m_email`, `m_phone`, `m_avatar`, `m_score`, `m_google_id`, `m_google_username`, `m_zip_code`, `m_city`, `m_area`, `m_addr`, `create_at`) VALUES
(1, '五十嵐真貴', NULL, 'admin', '$2y$10$FO70lc.3/vTeE0Vaf7O3Jes.UArylzLnnxfZffTF7410vndnvhScm', NULL, '1998-05-05', 'member', '505050@gmail.com', '0912505050', '50.png', 500, NULL, NULL, '116', '台北市', '文山區', '地址', '0000-00-00'),
(2, '張惠玲', NULL, 'elven', '$2y$10$YdUhOvUTvwK5oWp/i3LafOd2ImwsE/85YmmoY2konsxdmMSsvczFO', NULL, '1987-04-05', 'member', 'elven@superstar.com', '0966765556', 'D5f_bs_UIAANqHk.jpeg', 3000, NULL, NULL, '', '', '', '', '0000-00-00'),
(3, '彭建志', NULL, 'jinglun', '$2y$10$WqB2bnMSO/wgBiHSOBV2iuLbrUCsp8VmNJdK2AyIW6IANUL9jeFjC', NULL, '1987-07-01', 'member', 'jinglun@superstar.com', '0918181111', 'D5f_bs-UwAE-vxf.jpeg', 1500, NULL, NULL, '', '', '', '', '0000-00-00'),
(4, '謝耿鴻', NULL, 'sugie', '$2y$10$6uWtdYATI3b/wMRk.AaqIei852PLf.WjeKm8X.Asl0VTmpxCkqbW6', NULL, '1987-08-11', 'VIP', 'edreamer@gmail.com', '0914530768', 'yellowcat.png', 7000, NULL, NULL, '', '', '', '', '0000-00-00'),
(5, '蔣志明', NULL, 'shane', '$2y$10$pWefN9xkeXOKCx59GF6ZJuSGNnIFBY4q/DCmCvAwOFtnoTCujb3Te', NULL, '1984-06-20', 'member', 'shane@superstar.com', '0946820035', '7c273f22-68e2-4c3f-bb28-cfb9c904db6b.png', 3000, NULL, NULL, '', '', '', '', '0000-00-00'),
(6, '王佩珊', NULL, 'ivy', '$2y$10$RPrt3YfaSs0d82inYIK6he.JaPqOrisWMqASuxN5g62EyRio.lyEa', NULL, '1988-02-15', 'VIP', 'ivy@superstar.com', '0920981230', 'anya.png', 15000, NULL, NULL, '', '', '', '', '0000-00-00'),
(7, '林志宇', NULL, 'zhong', '$2y$10$pee.jvO6f4sSKahlc4cLLO9RUMyx8aphyqkSUdwHTNSy4Ax7YPdpq', NULL, '1987-05-05', 'VIP', 'zhong@superstar.com', '0951983366', 'HrNlUNP.jpeg', 14976, NULL, NULL, '', '', '', '', '0000-00-00'),
(8, '李曉薇', NULL, 'lala', '$2y$10$oiC9CaGiOdWu.6w5b3.b/Ora6fSuh8Lrbj8Kg5BUPT15O3QptksQS', NULL, '1985-08-30', 'member', 'lala@superstar.com', '0918123456', '9b86d7ceab3f9e2f0f543ab6f0f1ae62.jpeg', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(9, '賴秀英', NULL, 'crystal', '$2y$10$8Q0.JEGILRM91qAlMmWnB.wpcY.rJEbgNgV5ntIlqZmdGaHPwikji', NULL, '1986-12-10', 'member', 'crystal@superstar.com', '0907408965', '467d353f7e2d43563ce13fddbb213709.gif', 796, NULL, NULL, '', '', '', '', '0000-00-00'),
(10, '張雅琪', NULL, 'peggy', '$2y$10$RNqnXDNHkcTI2Zh2bkTKnOesz0FLXhihhT8ZL8OHoMeYSq7jsILMi', NULL, '1988-12-01', 'member', 'peggy@superstar.com', '0916456723', 'b51e871af241a73ab319ed5e00ec61ae.jpeg', 980, NULL, NULL, '', '', '', '', '0000-00-00'),
(11, '陳燕博', NULL, 'albert', '$2y$10$seMLwqcQRQiWa0jMBAcMMertjLbrPLRGNZoKc0NZ5FxTwWha7W3lm', NULL, '1993-08-10', 'VIP', 'albert@superstar.com', '0918976588', 'd44445a8f9519816229cc4352ba1b662.jpeg', 8590, NULL, NULL, '', '', '', '', '0000-00-00'),
(13, '黃信溢', NULL, 'dkdreamer', '$2y$10$Fx0rLJtV5mVtJzAJ52B/hup1AmviTe7Ciu0mtWBCZAkYC0qmg6OJy', NULL, '1987-04-05', 'member', 'edreamer@gmail.com', '955648889', 'd632ace1c221d953065afb4e6ad9f918.gif', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(126, 'penpen', NULL, 'penpen', '$2y$10$Oj9N8ZsZ/N0S4aK1eLbMO.GgF8U/DEISqoy/zmIAQeKpR9bzveYf2', NULL, '2022-06-15', 'member', '123@test.com', '0912345677', 'e07e97b395c35aef13fc8e7d3c85e8e0.jpg', 499, NULL, NULL, '', '', '', '', '0000-00-00'),
(127, '林', '熊熊', 'bearbear', '$2y$10$eit5KXibqdyKwEjbmuuMo.Gn9EmjaUEesHazj7N2Tb0wNuAPzjA1a', NULL, '2022-05-14', 'VIP', '123@test.com', '0912345678', 'http://localhost:3700/avatar_img/66666.jpg', 9600, NULL, NULL, '', '', '', '某一條路上', '2020-01-08'),
(132, '把餔啦', NULL, 'babula', '$2y$10$E1B/ArdG.nFLqj12Lrvtzua5knNV0Ip41Dh3HXMLqWmAU4govZZaq', NULL, '1999-02-01', 'member', '123@test.com', '0912345678', 'ee507b30b411b403711f28f6d0578ede.jpg', 300, NULL, NULL, '', '', '', '', '0000-00-00'),
(133, '浪漫duke', NULL, 'duke', '$2y$10$UHOPdQTJNklqO4KSqwj.N.UCOO7s21fZJNNorMt1zvOJNK2t.8UW2', NULL, '2022-06-09', 'member', '1234@test.com', '0912345678', '799512d800f9ba0a2c98e1060e391285.png', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(135, '大傑', NULL, 'jayjay', '$2y$10$cjCLBa/ld6MuIUWQdU5vMu/giVAxkJ.NNXMtFA9P2IoOr7z3Z6wdS', NULL, '1995-05-08', 'member', 'jayjay@gmail.com', '0936290633', '97cba2154af92cda4d015998eb47ed29.jpg', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(141, NULL, NULL, 'BEAR', NULL, NULL, NULL, 'member', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(143, '陳', '小明', 'yyyyy', '$2a$10$uKq8U47573Tq8W64Oofl4utXU/2JZ/3/g3IAltUkxeLNbg.ogaEKC', NULL, '2021-09-21', 'member', 'yyyy@gmail.com', '0912345678', 'http://localhost:3700/avatar_img/5555555.png', 0, NULL, NULL, NULL, '3', '2', '555555', '2022-08-05'),
(144, '許', '純美', 'weeed', '$2a$10$PWkRZiLThcE8q1TIVuY2euSjROjuo807WN7TvaVPlvtWocsHowutO', NULL, '2001-02-05', 'member', 'weed@gmail.com', '0912456788', 'http://localhost:3700/avatar_img/W9gIYt4h.jpeg', 0, NULL, NULL, NULL, '5', '8', '竹科園區', '2022-08-05'),
(150, '李', '大明', '666666', '$2a$10$gnL/Hp1KKxBG5WQ156alR.L4B39yT/KVWZj5aA/GL1LtP12KwpBB6', NULL, '1968-10-14', 'member', '66666@gmail.com', '0955523512', 'http://localhost:3700/avatar_img/277488599_721968158977408_6795277568981445232_n.png', 0, NULL, NULL, NULL, '台北市', '松山區', '五福路上', '2022-08-14'),
(164, NULL, NULL, '777777', '$2a$10$c8JX9gJizjbRGWs6lH85ze4RaogQy358TC4.urwR2sa79N2JFnuyq', NULL, NULL, 'member', '777@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-14'),
(168, '林', '新德', '林新德', '$2a$10$KXqfyARObtRKoZBaV63DGeSH9Dr2MYkwHqlFndwcRaYEan2Uw/WS2', 'yX1HRat9SBqqWzO7A2KC', NULL, 'member', 'shinderr0125@gmail.com', NULL, 'https://lh3.googleusercontent.com/a-/AFdZucpm3JVGtSeXn1ZIDXzpQvGfUBDrf8mJou5sQVe4=s100', 0, '107575394789859619164', NULL, NULL, NULL, NULL, NULL, '2022-08-15'),
(169, NULL, NULL, 'cosmo', '$2a$10$zXBHzelkUP.fiowsqwMSUeweG/Qf5L0F8nLhp7svKe.SO.U8Zh9mS', NULL, NULL, 'member', 'cosmo@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16'),
(170, NULL, NULL, '55555', '$2a$10$VVMhZMFcYHDLl4pzBV.TqOggO2HR2Carh8y4QQ0CPP.GkVB6LCdN.', NULL, NULL, 'member', '555@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16'),
(171, NULL, NULL, '12345', '$2a$10$XmL5RajgoM3MjOp86W1JgujWAfNT.FKShW1bAwa/pM47rd.doW32a', NULL, NULL, 'member', '123456@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-17');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `memberdata`
--
ALTER TABLE `memberdata`
  ADD PRIMARY KEY (`m_id`),
  ADD UNIQUE KEY `m_username` (`m_username`),
  ADD KEY `m_email` (`m_email`),
  ADD KEY `m_phone` (`m_phone`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `memberdata`
--
ALTER TABLE `memberdata`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
