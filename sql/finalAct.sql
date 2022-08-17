-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 17 日 16:31
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
-- 資料表結構 `act`
--

CREATE TABLE `act` (
  `act_id` int(255) NOT NULL,
  `act_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `act_s_time` datetime NOT NULL,
  `act_e_time` datetime NOT NULL,
  `min_people` int(255) NOT NULL,
  `max_people` int(255) NOT NULL,
  `min_age` int(255) DEFAULT NULL,
  `max_age` int(255) DEFAULT NULL,
  `act_price` int(255) NOT NULL,
  `act_desc` varchar(255) CHARACTER SET utf8 NOT NULL,
  `act_notice` varchar(500) CHARACTER SET utf8 NOT NULL,
  `act_schedule` varchar(500) CHARACTER SET utf8 NOT NULL,
  `act_prepare` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `act`
--

INSERT INTO `act` (`act_id`, `act_name`, `act_s_time`, `act_e_time`, `min_people`, `max_people`, `min_age`, `max_age`, `act_price`, `act_desc`, `act_notice`, `act_schedule`, `act_prepare`) VALUES
(1, '漂流探險', '2022-04-01 09:00:00', '2022-09-30 09:00:00', 1, 10, 5, 65, 1000, '1. 輕鬆自在：\r\n   利用溪水漂流的方式，一覽南澳獨特山水景色，並享受沁涼\r\n   溪水的小旅行。\r\n2. 老少咸宜：\r\n   在漂流行程中，除可讓小孩子學習獨立自主的行為態度，更\r\n   能有效促進親子關係唷！', '1. 活動費用不含交通接駁，請您自行開車前往至指定地點集合。\r\n2. 當天集合時到場後請主動與帶隊教練或承辦人電話聯繫， \r\n   以避免找不到人。\r\n3. 活動過程中，需聽從教練指示，不得脫隊，不得卸下任何 \r\n   安全裝備。\r\n4. 活動當天集合時，請勿遲到。為確保其他參加者的權益，\r\n   遲到超過半小時，不再等待直接出發，且無退款。\r\n5. 本公司教練保留臨場路線規劃及活動安排之權利。\r\n6. 當天天氣狀況視情況照常進行，除非另外通知。', '上午團\r\n09:00 那山那谷休閒農場集合\r\n09:30 出發換裝、行前講解、暖身\r\n10:00 開始漂流，沿途體驗沁涼溪水、激流冒險、團隊互助、壯闊山景！\r\n12:00 返回那山那谷休閒農場洗澡換裝\r\n\r\n下午團\r\n13:00 那山那谷休閒農場集合\r\n13:30 出發換裝、行前講解、暖身\r\n14:00 開始漂流，沿途體驗沁涼溪水、激流冒險、團隊互助、壯闊山景！\r\n16:00 返回那山那谷休閒農場洗澡換裝\r\n\r\n活動時間約 3 小時', '1. 活動當天著泳裝或輕便服裝下水（請勿穿牛仔褲）。\r\n2. 活動當天會提供溯溪鞋，為了換裝方便，建議自行攜帶拖\r\n   鞋或涼鞋。\r\n3. 個人飲水。\r\n4. 個人毛巾、塑膠袋（當天放置車上即可）。\r\n5. 有戴眼鏡的朋友，請加掛眼鏡帶，以防被溪水沖掉。\r\n6. 使用隱形眼鏡的朋友，請多帶一副一般眼鏡以下水備用。\r\n7. 活動前請先修剪指甲，長指甲於活動時易斷裂。\r\n8. 我們會準備防水相機為大家拍照，但若您也想要自行攜帶\r\n   防水相機也可以，但務必要注意固定方式，因為相機在溪\r\n   裡的遺失率很高。\r\n9. 手機、錢包、鑰匙、手錶、項鍊、戒指在溪中容易損壞且\r\n   遺失，請務必放置自己車上，其他貴重物品也請勿帶下\r\n   水，如不慎掉落溪中，教練會盡力協尋，但恕無法保證能\r\n   找回。'),
(3, '親子溯溪', '2022-04-01 09:00:00', '2022-09-30 09:00:00', 4, 10, 5, 65, 1200, '1. 適合初學者，行程促進親子交流與團隊互助，體驗在溪流\r\n   中冒險的強健心智！\r\n2. 造訪不為人知的世外桃源，無名溪水質豐沛清澈\r\n3. 瀑布一座接一座，生態魚況豐富，溯行探密最能發掘它的\r\n   樂趣。\r\n4. 人以上方可成團，歡迎預約報名。', '1. 活動費用不含交通接駁，請您自行開車前往至指定地點集合。\r\n2. 當天集合時到場後請主動與帶隊教練或承辦人電話聯繫，\r\n   以避免找不到人。\r\n3. 活動過程中，需聽從教練指示，不得脫隊，不得卸下任\r\n   何安全裝備。\r\n4. 活動當天集合時，請勿遲到。為確保其他參加者的權益，\r\n   遲到超過半小時，不再等待直接出發，且無退款。\r\n5. 本公司教練保留臨場路線規劃及活動安排之權利。\r\n6. 當天天氣狀況視情況照常進行，除非另外通知。', '上午團\r\n\r\n09:00 那山那谷休閒農場集合（請自行開車前往）\r\n09:30 出發換裝、行前講解、暖身\r\n10:00 開始溯溪，逆流而上，沿途體驗峽谷、深潭，團隊互\r\n      助、溪流冒險\r\n12:00 返回那山那谷休閒農場洗澡換裝\r\n\r\n下午團\r\n13:00 那山那谷休閒農場集合（請自行開車前往）\r\n13:30 出發換裝、行前講解、暖身\r\n14:00 開始溯溪，逆流而上，沿途體驗峽谷、深潭，團隊互\r\n      助、溪流冒險\r\n16:00 返回那山那谷休閒農場洗澡換裝', '1. 活動當天著泳裝或輕便服裝下水（請勿穿牛仔褲），也可\r\n   帶蛙鏡浮潛看小魚。\r\n2. 活動當天會提供溯溪鞋，為了換裝方便，建議自行攜帶拖\r\n   鞋或涼鞋。\r\n3. 個人毛巾、塑膠袋（當天放置車上即可）。\r\n4. 有戴眼鏡的朋友，請加掛眼鏡帶，以防被溪水沖掉。\r\n5. 使用隱形眼鏡的朋友，請多帶一副一般眼鏡以下水備用。\r\n6. 活動前請先修剪指甲，長指甲於活動時易斷裂。\r\n7. 我們會準備防水相機為大家拍照，但若您也想要自行攜帶\r\n   防水相機也可以，但務必要注意固定方式，因為相機在溪 \r\n   裡的遺失率很高。\r\n8. 手機、錢包、鑰匙、手錶、項鍊、戒指在溪中容易損壞且\r\n   遺失，請務必放置自己車上，其他貴重物品也請勿帶下 \r\n   水，如不慎掉落溪中，教練會盡力協尋，但恕無法保證能找回。'),
(5, '全地形沙灘車', '2022-04-01 10:00:00', '2022-09-30 10:00:00', 1, 10, 5, 65, 1200, '前進溪谷廣闊山景，享受穿越在不同地形上的樂趣！\r\n徜徉南澳溪谷、沙灘奔馳、叢林穿越、網美拍照。親子情侶或是\r\n三五好友都能雙載輕鬆玩，兩人即可出發！', '1. 駕駛者年齡年滿 16 歲且身體健康無虞，有心血管疾病、\r\n   孕婦請勿報名。駕駛沙灘車不須駕照，但有機車騎乘經驗者為佳。\r\n2. 每台沙灘車限乘兩人。\r\n3. 患有下列疾病或其他不宜受到過度刺激的旅客無法參加此\r\n   項目：高血壓、心臟病、懷孕婦女、癲癇、氣喘。\r\n4. 活動費用不含交通接駁，請您自行開車前往至指定地點集合。\r\n5. 當天集合時到場後請主動與帶隊教練或承辦人電話聯繫，\r\n   以避免找不到人。\r\n6. 活動過程中，需聽從教練指示，不得脫隊，不得卸下任何\r\n   安全裝備。\r\n7. 活動當天集合時，請勿遲到。為確保其他參加者的權益，\r\n   遲到超過半小時，不再等待直接出發，且無退款。\r\n8. 本公司教練保留臨場路線規劃及活動安排之權利。\r\n9. 當天天氣狀況視情況照常進行，除非另外通知。', '請於預訂之集合時間提前 10 分鐘抵達，報到後進行活動介\r\n紹、設備及操作講解並示範。\r\n\r\n上午團\r\n10:00 那山那谷休閒農場集合\r\n10:10 活動介紹、設備介紹與操作講解示範\r\n10:30 溪谷自駕 – 教練隨團\r\n11:30 返回那山那谷休閒農場\r\n\r\n下午團\r\n14:00 那山那谷休閒農場集合\r\n14:10 活動介紹、設備介紹與操作講解示範\r\n14:30 溪谷自駕 – 教練隨團\r\n15:30 返回那山那谷休閒農場', '穿著輕便衣服以及攜帶愉快的心。'),
(8, '夜遊觀星月', '2022-01-01 20:00:00', '2022-12-31 20:00:00', 1, 10, 1, 130, 200, '宜蘭五大「夢幻夜景」神級海景視野是許多攝影愛好者的朝聖之地，\r\n從遠處就能看到清晰的龜山島。 \r\n這裡白天擁有美翻的碧海藍天風景，入夜轉變為星光熠熠夜景，非常值得一去！', '1. 活動介紹過程請跟緊隊伍，請勿擅自脫隊。\r\n2. 夜晚行進過程請勿大聲喧嚷。', '請於預訂之集合時間提前 10 分鐘抵達，報到後進行活動介\r\n紹、設備及操作講解並示範。\r\n\r\n20:00 那山那谷休閒農場集合\r\n20:10 活動介紹、設備介紹與操作講解示範\r\n20:30 駕駛機車 – 抵達夜景區、夜景區介紹\r\n21:40 自由活動\r\n22:00 返回那山那谷休閒農場', '1. 穿著輕便衣服以及攜帶愉快的心。\r\n2. 請勿攜帶過亮手電筒會影響野生動物。');

-- --------------------------------------------------------

--
-- 資料表結構 `act_cover`
--

CREATE TABLE `act_cover` (
  `cover_id` int(255) NOT NULL,
  `act_id` int(255) NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `act_cover`
--

INSERT INTO `act_cover` (`cover_id`, `act_id`, `filename`) VALUES
(1, 1, 'float01.jpg'),
(2, 3, 'upstream01.jpg'),
(3, 5, 'atv04.jpg'),
(4, 8, 'night02.jpg'),
(5, 1, '1');

-- --------------------------------------------------------

--
-- 資料表結構 `act_img`
--

CREATE TABLE `act_img` (
  `act_img_id` int(255) NOT NULL,
  `act_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `act_img`
--

INSERT INTO `act_img` (`act_img_id`, `act_id`, `filename`) VALUES
(1, 1, 'float01.jpg'),
(2, 1, 'float02.jpg'),
(3, 1, 'float03.jpg'),
(4, 1, 'float04.jpg'),
(5, 3, 'upstream01.jpg'),
(6, 3, 'upstream02.jpg'),
(7, 3, 'upstream03.jpg'),
(8, 3, 'upstream04.jpg'),
(9, 3, 'upstream05.jpg'),
(10, 3, 'upstream06.jpg'),
(11, 5, 'atv01.jpg'),
(12, 5, 'atv02.jpg'),
(13, 5, 'atv03.jpg'),
(14, 5, 'atv04.jpg'),
(15, 5, 'atv05.jpg'),
(16, 8, 'night01.jpg'),
(17, 8, 'night02.jpg'),
(18, 8, 'night03.jpg'),
(19, 8, 'night04.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `act_leaders`
--

CREATE TABLE `act_leaders` (
  `act_l_id` int(255) NOT NULL,
  `act_l_name` varchar(255) NOT NULL,
  `act_l_age` int(255) NOT NULL,
  `act_l_mobile` varchar(255) NOT NULL,
  `act_l_address` varchar(255) NOT NULL,
  `act_l_license` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `act_leaders`
--

INSERT INTO `act_leaders` (`act_l_id`, `act_l_name`, `act_l_age`, `act_l_mobile`, `act_l_address`, `act_l_license`) VALUES
(1, '張兆軒', 30, '0970500901', '新北市', '潛水教練'),
(2, '簡文清', 31, '0912345578', '新北市', '健身教練');

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
(2, '1660625306656', 145, 5, 11, 1, 1200, '2022-08-17'),
(3, '1660712713332', 145, 5, 11, 3, 3600, '2022-09-09'),
(4, '1660712777037', 145, 5, 11, 3, 3600, '2022-09-09');

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

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `act`
--
ALTER TABLE `act`
  ADD PRIMARY KEY (`act_id`);

--
-- 資料表索引 `act_cover`
--
ALTER TABLE `act_cover`
  ADD PRIMARY KEY (`cover_id`),
  ADD KEY `act_id` (`act_id`);

--
-- 資料表索引 `act_img`
--
ALTER TABLE `act_img`
  ADD PRIMARY KEY (`act_img_id`),
  ADD KEY `act_id` (`act_id`);

--
-- 資料表索引 `act_leaders`
--
ALTER TABLE `act_leaders`
  ADD PRIMARY KEY (`act_l_id`);

--
-- 資料表索引 `act_order`
--
ALTER TABLE `act_order`
  ADD PRIMARY KEY (`Sid`),
  ADD KEY `member_id` (`member_id`,`act_id`),
  ADD KEY `act_l_id` (`act_l_id`);

--
-- 資料表索引 `admin_list`
--
ALTER TABLE `admin_list`
  ADD PRIMARY KEY (`admin_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `act`
--
ALTER TABLE `act`
  MODIFY `act_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `act_cover`
--
ALTER TABLE `act_cover`
  MODIFY `cover_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `act_img`
--
ALTER TABLE `act_img`
  MODIFY `act_img_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `act_leaders`
--
ALTER TABLE `act_leaders`
  MODIFY `act_l_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `act_order`
--
ALTER TABLE `act_order`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin_list`
--
ALTER TABLE `admin_list`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
