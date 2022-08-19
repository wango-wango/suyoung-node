-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 18 日 04:17
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
(1, '0.85', '訂單85折優惠', 'YOUNG85', '2022-06-25', '2022-07-10', '2022-07-01 11:26:54', 0),
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

--
-- 傾印資料表的資料 `credit_card`
--

INSERT INTO `credit_card` (`card_id`, `m_id`, `card_number`, `expire_date`) VALUES
(2, 127, '3569 1111 1111 1111', '12/22'),
(3, 127, '4621 2121 2121 2121', '12/12'),
(52, 145, '3569 1111 1111 1111', '12/12'),
(53, 145, '3569 1111 1111 1111', '12/12'),
(54, 145, '3569 1111 1111 1111', '21/34'),
(55, 145, '3569 1111 1111 1111', '11/21'),
(56, 145, '3569 1111 1111 1111', '12/12'),
(57, 145, '3569 1111 1111 1111', '12/12'),
(58, 145, '3560 1264 3235 0211', '12/31'),
(59, 145, '4693 5218 3749 1122', '12/31'),
(60, 145, '3569 1245 2356 6666', '01/27'),
(61, 145, '3569 3213 1423 4554', '01/27'),
(62, 145, '3569 1111 1111 1111', '12/12'),
(63, 145, '3442 231112 21213', '12/12'),
(64, 145, '3568 1212 1244 2312', '12/12'),
(65, 145, '3568 1212 1244 2312', '12/12'),
(66, 145, '3568 1212 1244 2312', '12/12'),
(67, 145, '3568 1212 1244 2312', '12/12'),
(68, 145, '3568 1212 1244 2312', '12/12'),
(69, 145, '3568 1212 1244 2312', '12/12'),
(70, 145, '3568 1212 1244 2312', '12/12'),
(71, 145, '3568 1212 1244 2312', '12/12'),
(72, 145, '3568 1212 1244 2312', '12/12'),
(73, 145, '3568 1212 1244 2312', '12/12'),
(74, 145, '3568 1212 1244 2312', '12/12'),
(75, 145, '3568 1212 1244 2312', '12/12'),
(76, 145, '3568 1212 1244 2312', '12/12'),
(77, 145, '3568 1212 1244 2312', '12/12'),
(78, 145, '3568 1212 1244 2312', '12/31'),
(79, 145, '3568 1212 1244 2312', '12/12'),
(80, 145, '3568 1212 1244 2312', '12/12'),
(81, 145, '3568 1212 1244 2312', '12/12'),
(82, 145, '3568 1212 1244 2312', '12/12'),
(83, 145, '3568 1212 1244 2312', '12/12'),
(84, 145, '3568 1212 1244 2312', '12/12'),
(85, 145, '3568 1212 1244 2312', '12/12'),
(86, 145, '3568 1212 1244 2312', '12/12'),
(87, 145, '3568 1212 1244 2312', '12/12'),
(88, 145, '3568 1212 1244 2312', '12/12'),
(89, 145, '3568 1212 1244 2312', '12/12'),
(90, 145, '3568 1212 1244 2312', '12/12'),
(91, 145, '3568 1212 1244 2312', '12/12'),
(92, 145, '3568 1212 1244 2312', '12/12'),
(93, 145, '3568 1212 1244 2312', '12/12'),
(94, 145, '3568 1212 1244 2312', '12/12'),
(95, 145, '3568 1212 1244 2312', '12/12'),
(96, 145, '3568 1212 1244 2312', '12/12'),
(97, 145, '3568 1212 1244 2312', '12/12'),
(98, 145, '3568 1212 1244 2312', '12/12'),
(99, 145, '3568 1212 1244 2312', '12/12'),
(100, 145, '3568 1212 1244 2312', '12/12'),
(101, 145, '3568 1212 1244 2312', '12/12'),
(102, 145, '3568 1212 1244 2312', '12/31'),
(103, 145, '3568 1212 1244 2312', '12/12'),
(104, 145, '3568 1212 1244 2312', '12/12'),
(105, 145, '3568 1212 1244 2312', '12/31'),
(106, 145, '3121 2313 1212 1213', '01/23'),
(107, 145, '3568 1212 1244 2312', '12/12'),
(108, 145, '3568 1212 1244 2312', '12/12'),
(109, 145, '3568 1212 1244 2312', '12/12'),
(110, 145, '3568 1212 1244 2312', '12/12'),
(111, 145, '3568 1212 1244 2312', '12/12'),
(112, 145, '3244 5234 1444 23', '12/13'),
(113, 145, '3523 1212 3342 3341', '12/12'),
(114, 145, '3568 1212 1244 2312', '12/12'),
(115, 145, '3121 2313 1212 1213', '12/12'),
(116, 145, '1212 1312 3123 2132', '12/31'),
(117, 145, '3568 1212 1244 2312', '12/12'),
(118, 145, '3568 1212 1244 2312', '12/12'),
(119, 145, '3568 1212 1244 2312', '12/12'),
(120, 145, '3568 1212 1244 2312', '12/12'),
(121, 145, '3568 1212 1244 2312', '12/32'),
(122, 145, '3568 1212 1244 2312', '12/12'),
(123, 145, '3568 1212 1244 2312', '12/31'),
(124, 145, '3568 1212 1244 2312', '12/12'),
(125, 145, '3568 1212 1244 2312', '12/12'),
(126, 145, '3568 1212 1244 2312', '12/12'),
(127, 145, '3568 1212 1244 2312', '12/12'),
(128, 145, '3568 1212 1244 2312', '12/12'),
(129, 145, '3568 1212 1244 2312', '12/12'),
(130, 145, '3568 1212 1244 2312', '12/33'),
(131, 145, '3568 1212 1244 2312', '12/12'),
(132, 145, '3568 1212 1244 2312', '12/12'),
(133, 145, '3568 1212 1244 2312', '12/12'),
(134, 145, '3568 1212 1244 2312', '12/33'),
(135, 145, '1231 3141 2414', '12/32'),
(136, 145, '3568 1212 1244 2312', '12/12'),
(137, 145, '3568 1212 1244 2312', '12/12'),
(138, 145, '3568 1212 1244 2312', '12/12'),
(139, 145, '3568 1212 1244 2312', '12/12'),
(140, 145, '3568 1212 1244 2312', '12/12'),
(141, 145, '3568 1212 1244 2312', '12/12'),
(142, 145, '3568 1212 1244 2312', '12/12'),
(143, 145, '3568 1212 1244 2312', '12/12'),
(144, 145, '3568 1212 1244 2312', '12/12'),
(145, 145, '3214 5231 1323 5552', '12/42'),
(146, 145, '3145 1214 4223 1145', '12/14'),
(147, 145, '3568 1212 1244 2312', '12/12'),
(148, 145, '3568 1212 1244 2312', '12/12'),
(149, 145, '3568 1212 1244 2312', '12/12'),
(150, 145, '3568 1212 1244 2312', '12/12'),
(151, 145, '3568 1212 1244 2312', '12/12'),
(152, 145, '3568 1212 1244 2312', '12/12'),
(153, 145, '3568 1212 1244 2312', '12/12'),
(154, 145, '3568 1212 1244 2312', '12/12'),
(155, 145, '3568 1212 1244 2312', '12/12'),
(156, 145, '3568 1212 1244 2312', '12/12'),
(157, 145, '3568 1212 1244 2312', '12/12'),
(158, 145, '3568 1212 1244 2312', '12/12'),
(159, 145, '3568 1212 1244 2312', '12/12'),
(160, 145, '3568 1212 1244 2312', '12/12'),
(161, 145, '3568 1212 1244 2312', '12/12'),
(162, 145, '3568 1212 1244 2312', '12/12'),
(163, 145, '3568 1212 1244 2312', '12/12'),
(164, 145, '3568 1212 1244 2312', '12/12'),
(165, 145, '3568 1212 1244 2312', '12/12'),
(166, 145, '3568 1212 1244 2312', '12/12'),
(167, 145, '3568 1212 1244 2312', '11/21'),
(168, 145, '3568 1212 1244 2312', '12/12'),
(169, 145, '3568 1212 1244 2312', '12/12'),
(170, 145, '3568 1212 1244 2312', '12/12'),
(171, 145, '3568 1212 1244 2312', '01/23'),
(172, 145, '3568 1212 1244 2312', '01/23'),
(173, 145, '3568 1212 1244 2312', '01/23'),
(174, 145, '3568 1212 1244 2312', '01/23'),
(175, 145, '3568 1212 1244 2312', '01/23'),
(176, 145, '3568 8124 4131 2324', '12/31'),
(177, 145, '3568 1212 1244 2312', '12/13'),
(178, 145, '3568 1212 1244 2312', '12/14'),
(179, 145, '3412 121313 14345', '12/13'),
(180, 145, '3568 1212 1244 2312', '12/12'),
(181, 145, '3568 1212 1244 2312', '12/12'),
(182, 145, '3333 3333 3333 3333', '12/29'),
(183, 145, '3568 1212 1244 2312', '12/12'),
(184, 145, '3568 1212 1244 2312', '11/29'),
(185, 145, '1111 1111 1111 1111', '12/34'),
(186, 145, '1111 1112 2233 3444', '12/34'),
(187, 145, '1223 4512 3451 2345', '12/34'),
(188, 145, '0000 0000 0000 0000', '12/34'),
(189, 145, '1234 5612 3451 2345', '12/34'),
(190, 145, '1234 5654 3212 3456', '12/34'),
(191, 145, '1234 5676 5432 1234', '12/34'),
(192, 145, '1234 5432 3454 3234', '12/34'),
(193, 145, '1234 5678 9876 5432', '01/29'),
(194, 145, '1232 3213 2321 3213', '12/12'),
(195, 145, '1234 5678 1121 2121', '12/14'),
(196, 145, '1234 5432 1234 5432', '12/34'),
(197, 145, '1212 1212 1211 2121', '12/12'),
(198, 145, '1234 5321 2354 3212', '12/34'),
(199, 145, '1234 5654 3213 4565', '23/43'),
(200, 145, '1234 5654 3212 3456', '12/34'),
(201, 145, '1234 2111 2222 2222', '12/32'),
(202, 145, '1234 5123 4123 4512', '12/34'),
(203, 145, '1234 5123 4512 3451', '12/34'),
(204, 145, '1234 1231 2312 3412', '12/34'),
(205, 145, '1212 1312 2334 1414', '12/14'),
(206, 145, '3568 1212 1244 2312', '12/12'),
(207, 145, '2313 4131 2441 2', '12/24'),
(208, 145, '3569 1213 4124 5112', '12/42'),
(209, 145, '3522 1234 4555 5544', '12/35'),
(210, 145, '1234 5664 4431 2111', '12/24'),
(211, 145, '1213 2131 5415 1231', '12/35'),
(212, 145, '2131 2314 1515 1232', '13/23'),
(213, 145, '1231 4155 1241 3213', '23/13'),
(214, 145, '3135 1313 1323 2322', '12/29'),
(215, 145, '4321 2565 3112 5125', '12/53'),
(216, 145, '5321 1224 4121 2444', '12/31'),
(217, 145, '3569 2354 7900 0123', '12/43'),
(218, 145, '3412 456776 76666', '12/26'),
(219, 145, '3568 1212 1244 2312', '12/34'),
(220, 145, '3568 1212 1244 2312', '12/31'),
(221, 145, '3568 1212 1244 2312', '12/12'),
(222, 145, '3568 1212 1244 2312', '12/12'),
(223, 145, '3568 1212 1244 2312', '12/31'),
(224, 145, '3568 1212 1244 2312', '12/31'),
(225, 145, '3568 1212 1244 2312', '12/14'),
(226, 145, '3568 1212 1244 2312', '12/12'),
(227, 145, '3568 1212 1244 2312', '12/31'),
(228, 145, '3526 8451 5552 2332', '12/34'),
(229, 145, '3568 1212 1244 2312', '12/14'),
(230, 145, '3568 1212 1244 2312', '12/12'),
(231, 145, '3568 1212 1244 2312', '12/42'),
(232, 145, '3568 1212 1244 2312', '12/12'),
(233, 145, '3244 5667 7765 4444', '12/52'),
(234, 145, '3569 2153 4678 9556', '12/32'),
(235, 145, '1244 4412 1313 2131', '12/32'),
(236, 145, '3568 1212 1244 2312', '12/24'),
(237, 145, '3568 1212 1244 2312', '12/32'),
(238, 145, '3568 1212 1244 2312', '12/12'),
(239, 145, '3568 1212 1244 2312', '12/34'),
(240, 145, '3568 1212 1244 2312', '12/12'),
(241, 145, '3568 1212 1244 2312', '12/23'),
(242, 145, '3568 1212 1244 2312', '12/12'),
(243, 145, '3523 1212 3342 3341', '12/31'),
(244, 145, '3568 1212 1244 2312', '12/12'),
(245, 145, '3568 1212 1244 2312', '12/12'),
(246, 145, '3568 1212 1244 2312', '12/31'),
(247, 145, '1241 2323 1232 2312', '12/31'),
(248, 145, '3568 1212 1244 2312', '12/13'),
(249, 145, '3568 1212 1244 2312', '12/12'),
(250, 145, '3568 1212 1244 2312', '12/34'),
(251, 145, '3568 1212 1244 2312', '12/12'),
(252, 145, '3568 1212 1244 2312', '21/34'),
(253, 145, '2313 2121 2321 4214', '11/24'),
(254, 145, '3568 1212 1244 2312', '12/12'),
(255, 145, '3568 1212 1244 2312', '12/12'),
(256, 145, '3568 1212 1244 2312', '12/12'),
(257, 145, '3568 1212 1244 2312', '12/12'),
(258, 145, '2233 3333 3333 3333', '12/13'),
(259, 145, '3244 4555 6667 7778', '12/13'),
(260, 145, '3568 1212 1244 2312', '12/12'),
(261, 145, '1231 4151 2411 2412', '12/43'),
(262, 145, '3452 312414 12412', '12/42'),
(263, 145, '3568 1212 1244 2312', '12/34'),
(264, 145, '3568 1212 1244 2312', '12/12'),
(265, 145, '3568 1212 1244 2312', '12/12'),
(266, 145, '3568 1212 1244 2312', '12/43'),
(267, 145, '2342 3523 5424 3434', '21/31'),
(268, 145, '3223 3242 5233 1213', '12/31'),
(269, 145, '2442 1321 3141 4123', '12/23'),
(270, 145, '1231 3213 1124 1421', '11/23'),
(271, 145, '3531 3121 4124 4142', '12/31'),
(272, 145, '3568 1212 1244 2312', '12/24'),
(273, 145, '3124 1123 2132 1314', '12/32'),
(274, 145, '3542 3155 3224 3413', '34/23'),
(275, 145, '1231 2414 1412 4142', '12/31');

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
(43, 150, '1', '1'),
(44, 150, '1', '2'),
(45, 150, '1', '4'),
(447, 165, '2', '3'),
(448, 165, '2', '1'),
(463, 127, '2', '8'),
(464, 127, '2', '5'),
(465, 127, '1', '1'),
(466, 127, '1', '2'),
(467, 127, '1', '3'),
(468, 127, '1', '4');

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
(2, '活動'),
(3, '食譜');

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
(127, '林', '熊熊', 'bearbear', '$2y$10$eit5KXibqdyKwEjbmuuMo.Gn9EmjaUEesHazj7N2Tb0wNuAPzjA1a', NULL, '2022-05-14', 'VIP', 'shinderr0125@gmail.com', '0912345678', 'http://localhost:3700/avatar_img/66666.jpg', 9600, NULL, NULL, '', '台北市', '文山區', '指南路二段', '2020-01-08'),
(132, '把餔啦', NULL, 'babula', '$2y$10$E1B/ArdG.nFLqj12Lrvtzua5knNV0Ip41Dh3HXMLqWmAU4govZZaq', NULL, '1999-02-01', 'member', '123@test.com', '0912345678', 'ee507b30b411b403711f28f6d0578ede.jpg', 300, NULL, NULL, '', '', '', '', '0000-00-00'),
(133, '浪漫duke', NULL, 'duke', '$2y$10$UHOPdQTJNklqO4KSqwj.N.UCOO7s21fZJNNorMt1zvOJNK2t.8UW2', NULL, '2022-06-09', 'member', '1234@test.com', '0912345678', '799512d800f9ba0a2c98e1060e391285.png', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(135, '大傑', NULL, 'jayjay', '$2y$10$cjCLBa/ld6MuIUWQdU5vMu/giVAxkJ.NNXMtFA9P2IoOr7z3Z6wdS', NULL, '1995-05-08', 'member', 'jayjay@gmail.com', '0936290633', '97cba2154af92cda4d015998eb47ed29.jpg', 0, NULL, NULL, '', '', '', '', '0000-00-00'),
(141, NULL, NULL, 'BEAR', NULL, NULL, NULL, 'member', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(143, '陳', '小明', 'yyyyy', '$2a$10$uKq8U47573Tq8W64Oofl4utXU/2JZ/3/g3IAltUkxeLNbg.ogaEKC', NULL, '2021-09-21', 'member', 'yyyy@gmail.com', '0912345678', 'http://localhost:3700/avatar_img/5555555.png', 0, NULL, NULL, NULL, '3', '2', '555555', '2022-08-05'),
(144, '許', '純美', 'weeed', '$2a$10$PWkRZiLThcE8q1TIVuY2euSjROjuo807WN7TvaVPlvtWocsHowutO', NULL, '2001-02-05', 'member', 'weed@gmail.com', '0912456788', 'http://localhost:3700/avatar_img/W9gIYt4h.jpeg', 0, NULL, NULL, NULL, '5', '8', '竹科園區', '2022-08-05'),
(150, '李', '大明', '666666', '$2a$10$gnL/Hp1KKxBG5WQ156alR.L4B39yT/KVWZj5aA/GL1LtP12KwpBB6', NULL, '1968-10-14', 'member', '66666@gmail.com', '0955523512', 'http://localhost:3700/avatar_img/277488599_721968158977408_6795277568981445232_n.png', 0, NULL, NULL, NULL, '台北市', '松山區', '五福路上', '2022-08-14'),
(164, NULL, NULL, '777777', '$2a$10$c8JX9gJizjbRGWs6lH85ze4RaogQy358TC4.urwR2sa79N2JFnuyq', NULL, NULL, 'member', '777@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-14'),
(169, NULL, NULL, 'cosmo', '$2a$10$zXBHzelkUP.fiowsqwMSUeweG/Qf5L0F8nLhp7svKe.SO.U8Zh9mS', NULL, NULL, 'member', 'cosmo@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16'),
(170, NULL, NULL, '55555', '$2a$10$VVMhZMFcYHDLl4pzBV.TqOggO2HR2Carh8y4QQ0CPP.GkVB6LCdN.', NULL, NULL, 'member', '555@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16'),
(171, NULL, NULL, '12345', '$2a$10$XmL5RajgoM3MjOp86W1JgujWAfNT.FKShW1bAwa/pM47rd.doW32a', NULL, NULL, 'member', '123456@gmail.com', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-17'),
(172, '舒', '小營', '舒小營', NULL, NULL, NULL, 'member', 'xiaoyingshu389@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/AItbvmm_XtGz9eHLFPtwrhaOfKfgL4Vb7ZJqvyZ9BcYw=s100', 0, '101723453683657106608', NULL, NULL, NULL, NULL, NULL, '2022-08-18');

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
(6, 127, 5, 0),
(7, 163, 5, 0),
(8, 164, 5, 0),
(9, 167, 5, 0),
(10, 168, 5, 0),
(11, 169, 5, 0),
(12, 170, 5, 0),
(13, 127, 2, 1),
(14, 127, 1, 0),
(15, 171, 5, 0),
(16, 172, 5, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `sid` int(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_Type` int(11) DEFAULT NULL,
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
(1, '', 145, 1, 4, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '', '2022-08-12', '2022-08-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-10 16:00:00'),
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
(245, '1660722308061', 127, 1, 3, 0, 3000, 6, 3, 'van', 'campingVan_A5.jpeg', '望山露營車', '1', '2022-03-18', '2022-03-19', NULL, NULL, NULL, NULL, NULL, NULL, 6500, '2022-03-16 23:45:08'),
(246, '1660722308061', 127, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 3, '2022-08-25', 3600, 6500, '2022-03-16 23:45:08'),
(247, '1660721081463', 127, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '全地形沙灘車', 'atv01.jpg', 1, '2022-08-19', 1200, 19800, '2022-08-16 23:24:41'),
(248, '1660721081463', 127, 1, 7, 0, 5800, 4, 2, 'family', 'family-typeC5.jpg', '親子同遊帳', '1', '2022-08-19', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, 19800, '2022-08-16 23:24:41');

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
  `Classification` varchar(11) NOT NULL,
  `hot` int(11) NOT NULL,
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

--
-- 傾印資料表的資料 `recipes`
--

INSERT INTO `recipes` (`sid`, `Classification`, `hot`, `res_name`, `res_img`, `ingredient`, `cook_time`, `serves`, `tool`, `recipe_type`, `price`, `collect`) VALUES
(2, '創意料理', 100, '牛油果雞蛋煙肉三文治', 'OilEggMeatSandwich.svg', '牛油果 1 個、煙肉 4塊、麵包 4 塊、雞蛋2隻', '20分', '2-3人', '平底鍋', '葷', 100, 0),
(3, '創意料理', 100, 'Pancake', 'pancake.svg', '日本 Pancake 預拌粉、雞蛋 1 至 2 隻、鮮奶 1 盒、牛油、自選果醬、煉奶、楓糖、水果', '30分', '2-4人', '平底鍋', '葷', 150, 0),
(4, '山珍野味', 100, '白菜肥牛壽喜燒鍋', 'BeefHotPot.svg', '火鍋肥牛片300g、大白菜半個、洋蔥半個、金針菇或其他菇類、壽喜燒醬汁、雞湯一盒', '30分', '4-6人', '火鍋', '葷', 500, 0),
(5, '大海滋味', 100, '三文魚燉飯', 'sanFishRice.svg', '米2杯、三文魚2-3塊、洋蔥半個、蘑菇3-4隻、雞湯一盒、牛奶或鮮奶油150g、蒜、鹽、胡椒、油（適量）', '30分', '2-4人', '平底鍋', '葷', 250, 0),
(6, '創意料理', 200, '北非蛋', 'africaEgg.svg', '罐頭蕃茄1罐、蛋3隻、洋蔥半個、紅椒半個、蘑菇4隻、麵包數塊、鹽、胡椒、油、香草（適量）', '20分', '2-3人', '平底鍋', '葷', 150, 0),
(7, '大海滋味', 100, '香煎鮭魚佐時蔬', 'salmonVeg.svg', '鮭魚菲力約50g、檸檬一顆、彩椒二色、櫛瓜一條、香菇二至三朵、馬告/馬頓鹽酌量', '30分', '1-2人', '鑄鐵鍋', '葷', 400, 0),
(8, '大海滋味', 200, '法國普羅旺斯燉飯', 'plowanceStew.svg', '番茄6～7顆、櫛瓜2條、洋蔥4~5顆、紅椒4顆、茄子1條、紅蘿蔔1條、蒜頭數瓣、南法香草束(月桂葉、迷迭香等)、酌量胡椒少許', '45分', '10人', '鑄鐵鍋', '葷', 800, 0),
(9, '大海滋味', 200, '章魚燒', 'octopusball.svg', '高麗菜半顆~1顆、紅蘿蔔適量、花枝or透抽or章魚300g、低筋麵粉150g、雞蛋2~3顆、蔥適量、柴魚片適量', '30分', '4-6人', '鐵煎鍋', '葷', 400, 0),
(10, '大海滋味', 200, '韓式海鮮炒泡菜', 'koreanRiceCake.svg', '韓式年糕一包400g、魚板適量、豬五花200g、韓式泡菜20g、韓式辣醬二匙、豆腐100g、洋蔥半顆、紅蘿蔔一小段蔥一束30g、韭菜一束30g、乳酪絲100g、辣椒粉15g、高湯塊10g/一塊', '1小時', '2人', '鑄鐵鍋', '葷', 400, 0),
(11, '山珍野味', 200, '台式三杯雞', 'threecupchick.svg', '麻油100cc、米酒100cc、醬油100cc、雞腿肉去骨切丁二片、香菇or杏鮑菇切片2~3朵、蔥一束、薑數片、蒜頭數瓣、九層塔10g', '30分', '4人', '鍛鐵鍋', '葷', 300, 0),
(12, '山珍野味', 300, '日式厚切豬排蓋飯', 'pigsteakrice.svg', '里肌肉1斤或2~3片、雞蛋5顆、洋蔥1顆、青蔥1束、醬油5g、味醂5g、麵包粉30g、薑1小塊、辣椒1條、高湯50~100ml、白飯1鍋', '30分', '66人', '鑄鐵鍋', '葷', 400, 0),
(13, '大海滋味', 300, '白酒蛤蠣麵 ', 'whitewineclams.svg', '義大利麵一人份、蛤蜊適量、白酒一杯、切片蒜頭適量、九層塔或蘿勒適量、水適量、鹽、胡椒等調味料\r\n', '20分', '1人', '平底鍋', '葷', 200, 0),
(14, '山珍野味', 300, '蒜香牛排', 'garlicsteak.svg', '材料：肉眼牛扒\r\n調味料：海鹽、胡椒、油、大蒜、迷迭香、橄欖油（適量）	\r\n', '20分', '1-2人', '鑄鐵鍋', '葷', 300, 0),
(15, '山珍野味', 300, '韭菜肉丸鍋 ', 'joetsaimeatball.svg', '絞肉150g、韭菜(切末)約3小束、片栗粉或太白粉1大匙、醬油1小匙、糖1/2小匙、味噌1/2大匙、高湯500ml、蠔油1/2大匙、蒜泥1小匙、薑泥1小匙、米霖1大匙\r\n', '15分', '2人', '湯鍋', '葷', 300, 0),
(16, '山珍野味', 300, '味增肉片大根煮', 'misomeat.svg', '肉片100~200g、高湯400g、酒1大匙、白蘿蔔 (切小片)150g、味噌1大匙、蔥花隨意', '30分', '2人', '湯鍋', '葷', 200, 0),
(17, '山珍野味', 100, '蠔油雞肉燒', 'oilchicken.svg', '雞肉(去皮切小塊)約150g、片栗粉或太白粉1大匙、(素)蠔油2/3~1大匙、酒2/3~1大匙、蒜末1小匙、薑末1小匙、鹽、黑胡椒少許\r\n', '15分', '2人', '鑄鐵鍋', '葷', 300, 0),
(18, '創意料理', 100, '番茄煨麵', '18.svg', '', '', '', '', '', 0, 0),
(19, '創意料理', 100, '柑仔蜜醬', '19.svg', '', '', '', '', '', 0, 0),
(20, '創意料理', 100, '蘑菇卵燥雞肉炒\r\n', '20.svg', '', '', '', '', '', 0, 0),
(21, '創意料理', 200, '鮮蝦飯糰\r\n', '21.svg', '', '', '', '', '', 0, 0),
(22, '山珍野味', 200, '\r\n甜椒絞肉雞豆飯\r\n', '22.svg', '', '', '', '', '', 0, 0),
(23, '創意料理', 200, '\r\n莓果吐司杯\r\n', '23.svg', '', '', '', '', '', 0, 0),
(24, '創意料理', 300, '\r\n蘋果紅菜頭\r\n', '24.svg', '', '', '', '', '', 0, 0),
(25, '山珍野味', 300, '\r\n韓式炸雞醃蘿蔔\r\n', '25.svg', '', '', '', '', '', 0, 0),
(26, '山珍野味', 300, '越南法國麵包 ', '26.svg', '', '', '', '', '', 0, 0),
(27, '大海滋味', 100, ' \r\n西班牙海鮮快炒\r\n ', '27.svg', '', '', '', '', '', 0, 0),
(28, '山珍野味', 100, ' \r\n烏醋照燒肉片\r\n ', '28.svg', '', '', '', '', '', 0, 0),
(29, '山珍野味', 100, ' \r\n超級焗烤義大利麵\r\n ', '29.svg', '', '', '', '', '', 0, 0),
(30, '創意料理', 200, '豪華起司蘑菇漢堡', '30.svg', '', '', '', '', '', 0, 0),
(31, '創意料理', 200, '韓國雜菜風炒冬粉', '31.svg', '', '', '', '', '', 0, 0),
(32, '創意料理', 200, '高湯玉子燒', '32.svg', '', '', '', '', '', 0, 0),
(33, '大海滋味', 300, '洋蔥照燒魚', '33.svg', '', '', '', '', '', 0, 0),
(34, '大海滋味', 300, '蝦仁蛋炒飯', '34.svg', '', '', '', '', '', 0, 0),
(35, '大海滋味', 300, '酸辣湯烏龍麵', '35.svg', '', '', '', '', '', 0, 0),
(36, '大海滋味', 100, '什錦燴飯', '36.svg', '', '', '', '', '', 0, 0),
(37, '大海滋味', 200, '紅醬鮪魚義大利麵', '37.svg', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `room`
--

CREATE TABLE `room` (
  `sid` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `room_price` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `person_num` int(11) NOT NULL,
  `room_image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `recommend` int(11) DEFAULT 0,
  `create_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room`
--

INSERT INTO `room` (`sid`, `room_name`, `room_price`, `room_type_id`, `person_num`, `room_image`, `description`, `recommend`, `create_at`) VALUES
(1, '頂級星空帳', 12800, 1, 4, 'roomA8.jpeg', '舒營的頂級星空帳室內空間呈半圓形，白天可通過透明布幕看到外面風景，晚上則可以通過上方的開合式布簾一窺美麗星空。房內設有柔軟大沙發及歐洲進口KingSize雙人床，讓您體驗浪漫的一天。', 1, '2018-06-08'),
(2, '網美神殿帳', 16800, 1, 6, 'roomE1.jpeg', '舒營的印第安帳室內空間為上窄下寬，佈置為美洲原始風，屋內中間設有定時定溫電子加熱火爐，可讓您和您的朋友體驗棚內圍爐的樂趣，床鋪為多張柔軟高級彈簧床，為您的睡眠品質把關。', 0, '2014-12-10'),
(3, '印第安帳', 20800, 1, 8, 'roomC1.jpeg', '舒營的網美神殿帳為室內空間最大的選擇，適合親朋好友一同來同歡享受，房內有多張高級彈簧床以及懶人骨頭沙發，讓您能隨處躺隨處放鬆，此外棚內也有古董家具佈景，讓您的美照有更多的變化。', 0, '2014-12-12'),
(4, '親子同遊帳', 5800, 2, 4, 'family-typeC5.jpg', '舒營的親子同樂帳適合家裡有孩童的家庭入住，房內設有溜滑梯跟床鋪合一的遊樂設施，讓小朋友能夠玩的開心，此外也有提供童話書書櫃以及徹底消毒的手套布偶，讓您省去尋找床邊故事素材的煩惱。', 0, '2017-10-10'),
(5, '闔家歡聚帳', 7800, 2, 8, 'family-typeB1.jpeg', '舒營的親子同樂帳適合家中有青少年的孩子入住，房內設有投影片大型熒幕，只要選擇闔家歡樂帳，即可至營本部租借遊戲機一台（如switch、PS5）及遊戲一片，此外電視也可鏈接串流影音服務，增添樂趣。', 1, '2017-10-27'),
(6, '望山露營車', 3000, 3, 2, 'campingVan_A5.jpeg', '舒營的望山露營車是情侶遊客中的人氣好選擇，隔音好的內裝以及可一望山景的單面透明窗戶，可以讓整體浪漫體驗大幅升級，而車內還有另外一大特色為天花板電影院，可通過投影機播放串流影音也是一大特色。', 1, '2002-01-22'),
(7, '賞星露營車', 4800, 3, 4, 'campingVan_B1.jpeg', '舒營的賞星露營車是情侶遊客中的口碑好選擇，舒適大床、隔音好的內裝以及透明天窗，可以讓整體浪漫體驗大幅升級，此外車體外設有大吊床，可以讓您在外面也能體會chill浪漫的感覺。', 0, '2010-05-11'),
(8, '木棧板區', 800, 4, 6, 'A1.jpeg', '舒營設有多個木棧板區，提供給想要從頭到尾享受搭建帳篷樂趣的遊客，木棧板大小為6坪，除了能支援搭建帳篷外，也可使用小型帳篷加自備桌椅放在外面，讓您能夠充分利用使用空間，享受難忘假期。', 0, '2003-04-12'),
(9, '搭棚遮雨區', 1200, 4, 6, 'B1.jpeg', '舒營的搭棚遮雨區適合有基礎帳篷裝備的朋友，遮雨棚材質不透光且防水能力佳，不用擔心夏日艷陽或者強烈的午後雷陣雨，適合在各種天氣環境下增加使用空間，另外一大優勢是不用擔心設備受潮難收拾。', 0, '2009-12-15'),
(10, '木製屋頂區', 1500, 4, 6, 'C1.jpeg', '舒營的木製屋頂區與搭棚遮雨區功能類似，皆有不透光且防水能力佳的特性，不用擔心夏日艷陽或強烈的午後雷陣雨，適合在各種天氣環境下增加使用空間，而木製的另一大特色是能聞到天然的木頭香味。', 1, '2009-12-10');

-- --------------------------------------------------------

--
-- 資料表結構 `room_CheckIn_Roles`
--

CREATE TABLE `room_CheckIn_Roles` (
  `sid` int(11) NOT NULL,
  `check_in` varchar(30) NOT NULL,
  `check_out` varchar(30) NOT NULL,
  `Business_hour` varchar(30) NOT NULL,
  `Checkin_Roles` text NOT NULL,
  `Pets_Roles` text NOT NULL,
  `hotel_Info` text NOT NULL,
  `Precautions` text NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_CheckIn_Roles`
--

INSERT INTO `room_CheckIn_Roles` (`sid`, `check_in`, `check_out`, `Business_hour`, `Checkin_Roles`, `Pets_Roles`, `hotel_Info`, `Precautions`, `room_id`) VALUES
(1, '02:00 - 22:00', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\n- 週三為園區休息日。\n- 入園時間:中午 12:00 至晚上 10:00\n- 晚上 10:00 後謝絕入場\n- 離園時間:上午 11:00 前\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '- 已含炊事區 (附遮陽網)\r\n- 每帳可最多追加四位小朋友，每位收清潔費200元 (附棉被、枕頭及備品)，因空間有限恕不得追加大人。\r\n- 設備包含：帳篷1頂、雙人充氣床附床包2組、枕頭附枕頭套2組、掛衣架1組、置物架2組、照明燈3組、電風扇1台、延長線2條、四人野餐桌椅1組、獨立洗手台1組、公用衛浴附廁所2間。\r\n- 均附洗髮精、沐浴乳、牙膏牙刷組、抽取式衛生紙一包、每帳專用洗手台附洗碗精及洗手乳。', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 1),
(2, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '- 已含炊事區 (附遮陽網)\r\n- 每帳可最多追加四位小朋友，每位收清潔費200元 (附棉被、枕頭及備品)，因空間有限恕不得追加大人。\r\n- 設備包含：帳篷1頂、雙人充氣床附床包2組、枕頭附枕頭套2組、掛衣架1組、置物架2組、照明燈3組、電風扇1台、延長線2條、四人野餐桌椅1組、獨立洗手台1組、公用衛浴附廁所2間。\r\n- 均附洗髮精、沐浴乳、牙膏牙刷組、抽取式衛生紙一包、每帳專用洗手台附洗碗精及洗手乳。', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 2),
(3, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '- 已含炊事區 (附遮陽網)\r\n- 每帳可最多追加四位小朋友，每位收清潔費200元 (附棉被、枕頭及備品)，因空間有限恕不得追加大人。\r\n- 設備包含：帳篷1頂、雙人充氣床附床包2組、枕頭附枕頭套2組、掛衣架1組、置物架2組、照明燈3組、電風扇1台、延長線2條、四人野餐桌椅1組、獨立洗手台1組、公用衛浴附廁所2間。\r\n- 均附洗髮精、沐浴乳、牙膏牙刷組、抽取式衛生紙一包、每帳專用洗手台附洗碗精及洗手乳。', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 3),
(4, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '- 已含炊事區 (附遮陽網)\r\n- 每帳可最多追加四位小朋友，每位收清潔費200元 (附棉被、枕頭及備品)，因空間有限恕不得追加大人。\r\n- 設備包含：帳篷1頂、雙人充氣床附床包2組、枕頭附枕頭套2組、掛衣架1組、置物架2組、照明燈3組、電風扇1台、延長線2條、四人野餐桌椅1組、獨立洗手台1組、公用衛浴附廁所2間。\r\n- 均附洗髮精、沐浴乳、牙膏牙刷組、抽取式衛生紙一包、每帳專用洗手台附洗碗精及洗手乳。', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 4),
(5, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '- 已含炊事區 (附遮陽網)\r\n- 每帳可最多追加四位小朋友，每位收清潔費200元 (附棉被、枕頭及備品)，因空間有限恕不得追加大人。\r\n- 設備包含：帳篷1頂、雙人充氣床附床包2組、枕頭附枕頭套2組、掛衣架1組、置物架2組、照明燈3組、電風扇1台、延長線2條、四人野餐桌椅1組、獨立洗手台1組、公用衛浴附廁所2間。\r\n- 均附洗髮精、沐浴乳、牙膏牙刷組、抽取式衛生紙一包、每帳專用洗手台附洗碗精及洗手乳。', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 5),
(6, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '享受時下最潮的露營車體驗，不必流汗搭帳，車內備有冷暖氣、舒眠睡墊\r\n\r\n適合親子家庭、好友聚會，輕鬆暢遊山林，感受時尚舒適的自然輕旅行。\r\n\r\n四人 / 兩人 一車 \r\n\r\n房內設備：冷暖氣、桌椅、雙人床墊\r\n\r\n房內並無獨立衛浴，鄰近設有公用衛浴', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 6),
(7, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '享受時下最潮的露營車體驗，不必流汗搭帳，車內備有冷暖氣、舒眠睡墊\r\n\r\n適合親子家庭、好友聚會，輕鬆暢遊山林，感受時尚舒適的自然輕旅行。\r\n\r\n四人 / 兩人 一車 \r\n\r\n房內設備：冷暖氣、桌椅、雙人床墊\r\n\r\n房內並無獨立衛浴，鄰近設有公用衛浴', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 7),
(8, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '- 每帳營位基本入住6人，最多加2人(無附裝備)，請事先於訂單備註\r\n- 每一營位只能搭一頂帳蓬，營位尺寸 :主帳3公尺x3公尺(棧板離地約15cm)+客廳帳3公尺x3.6公尺。\r\n- 棧板與碎石地高低差10-15公分，帳篷需以覆蓋棧板方式搭設，若棧板寬度不足，可至入口處取用小塊棧板加寬。\r\n- 此區共5組公用洗手台、衛浴附廁所4間、冷凍冷藏冰箱公用1台、冰溫熱飲水機公用1台、脫水機公用1台。\r\n- 請自備帳篷、盥洗用品、食材及器具等，營主有提供限量帳篷裝備套組租借，請提前於訂位時一併預訂。', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 8),
(9, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '- 每帳營位基本入住6人，最多加2人(無附裝備)，請事先於訂單備註\r\n- 每一營位只能搭一頂帳蓬，營位尺寸 :主帳3公尺x3公尺(棧板離地約15cm)+客廳帳3公尺x3.6公尺。\r\n- 棧板與碎石地高低差10-15公分，帳篷需以覆蓋棧板方式搭設，若棧板寬度不足，可至入口處取用小塊棧板加寬。\r\n- 此區共5組公用洗手台、衛浴附廁所4間、冷凍冷藏冰箱公用1台、冰溫熱飲水機公用1台、脫水機公用1台。\r\n- 請自備帳篷、盥洗用品、食材及器具等，營主有提供限量帳篷裝備套組租借，請提前於訂位時一併預訂。', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 9),
(10, '02:00 - 22:00 ', '11:00 AM', '08:30 - 22:00', '- 營業日:週五、週六、週日、週一、週二、週四。\r\n- 週三為園區休息日。\r\n- 入園時間:中午 12:00 至晚上 10:00\r\n- 晚上 10:00 後謝絕入場\r\n- 離園時間:上午 11:00 前\r\n- 超過下午 1:00 尚未離場，每人酌收 100 元清潔費。', '1、全園區歡迎攜帶寵物。 \r\n2、攜帶寵物不另外收費，唯獨寵物進帳篷需放於提籃內，並禁止單獨放置於帳篷內\r\n3、若有髒污毀損，將視情況收取額外費用。 \r\n4、若有便溺情況請寵物主人協助清理。\r\n5、若寵物至不熟悉的環境下會吠叫，請寵物主人設法制止，避免影響其他旅客權益，若寵物較不受控，請自行斟酌是否攜帶寵物進園。 \r\n6、寵物於帳篷外之公共空間可不綁鏈，但若有發生寵物走失、攻擊他人行為需請寵物主人自負相關責任及賠償事宜。 \r\n7、上述規範若有違反，舒營有權終止旅客入住的權益並拒絕退款。', '- 每帳營位基本入住6人，最多加2人(無附裝備)，請事先於訂單備註\r\n- 每一營位只能搭一頂帳蓬，營位尺寸 :主帳3公尺x3公尺(棧板離地約15cm)+客廳帳3公尺x3.6公尺。\r\n- 棧板與碎石地高低差10-15公分，帳篷需以覆蓋棧板方式搭設，若棧板寬度不足，可至入口處取用小塊棧板加寬。\r\n- 此區共5組公用洗手台、衛浴附廁所4間、冷凍冷藏冰箱公用1台、冰溫熱飲水機公用1台、脫水機公用1台。\r\n- 請自備帳篷、盥洗用品、食材及器具等，營主有提供限量帳篷裝備套組租借，請提前於訂位時一併預訂。', '1. 房內嚴禁吸菸\r\n2. 請共同愛惜房內所有物品，如有損壞需照價賠償。\r\n3.  請妥善保管您的貴重物品，本園對貴重物品遺失概不負責。\r\n4. 營區停車場僅供車輛停放之用，營區對停放之車輛不負保管責任。\r\n5. 非自己承租之房間及帳篷，勿觸碰及使用，違者以原價租賃。\r\n6. 房內外設施或租借商品，如有竊取或損壞及留下無法清潔之汙漬，須以原價賠償：蓄意者將移送法辦，再以原價十倍賠償。\r\n7. 烤肉活動時間不得超過晚間十點，若預過晚間十點請在指定烤肉區。\r\n8. 園區晚上10點後嚴禁施放煙火。', 10);

-- --------------------------------------------------------

--
-- 資料表結構 `room_detail_picture`
--

CREATE TABLE `room_detail_picture` (
  `sid` int(11) NOT NULL,
  `pic_name` varchar(50) NOT NULL,
  `room_id` int(11) NOT NULL,
  `roomType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_detail_picture`
--

INSERT INTO `room_detail_picture` (`sid`, `pic_name`, `room_id`, `roomType_id`) VALUES
(1, 'roomA8.jpeg', 1, 1),
(2, 'roomA1.jpeg', 1, 1),
(3, 'roomA12.jpeg', 1, 1),
(4, 'roomA11.jpeg', 1, 1),
(5, 'roomA7.jpeg', 1, 1),
(6, 'roomA9.jpeg', 1, 1),
(7, 'roomE1.jpeg', 2, 1),
(8, 'roomE2.jpeg', 2, 1),
(9, 'roomE3.jpeg', 2, 1),
(10, 'roomE4.jpeg', 2, 1),
(11, 'roomE5.jpeg', 2, 1),
(12, 'roomE6.jpeg', 2, 1),
(13, 'roomC1.jpeg', 3, 1),
(14, 'roomC2.jpeg', 3, 1),
(15, 'roomC4.jpeg', 3, 1),
(16, 'roomD3.jpeg', 3, 1),
(17, 'roomD7.jpeg', 3, 1),
(18, 'roomD8.jpeg', 3, 1),
(19, 'family-typeC1.jpg', 4, 2),
(20, 'family-typeC2.jpg', 4, 2),
(21, 'family-typeC3.jpg', 4, 2),
(22, 'family-typeC4.jpg', 4, 2),
(23, 'family-typeC5.jpg', 4, 2),
(24, 'family-typeC8.jpg', 4, 2),
(25, 'family-typeB1.jpeg', 5, 2),
(26, 'family-typeB2.jpeg', 5, 2),
(27, 'family-typeB3.jpeg', 5, 2),
(28, 'family-typeB4.jpeg', 5, 2),
(29, 'family-typeB5.jpeg', 5, 2),
(30, 'family-typeB6.jpeg', 5, 2),
(31, 'A1.jpeg', 8, 4),
(32, 'camp1.jpeg', 8, 4),
(33, 'camp2.jpeg', 8, 4),
(34, 'camp3.jpeg', 8, 4),
(35, 'camp4.jpeg', 8, 4),
(36, 'B1.jpeg', 9, 4),
(37, 'B2.jpeg', 9, 4),
(38, 'B3.jpeg', 9, 4),
(39, 'camp1.jpeg', 9, 4),
(40, 'camp2.jpeg', 9, 4),
(41, 'camp3.jpeg', 9, 4),
(47, 'C1.jpeg', 10, 4),
(48, 'C2.jpeg', 10, 4),
(49, 'C3.jpeg', 10, 4),
(50, 'C4.jpeg', 10, 4),
(51, 'camp2.jpeg', 10, 4),
(52, 'camp3.jpeg', 10, 4),
(53, 'campingVan_A5.jpeg', 6, 3),
(54, 'campingVan_A2.jpeg', 6, 3),
(55, 'campingVan_A3.jpeg', 6, 3),
(56, 'campingVan_A4.jpeg', 6, 3),
(57, 'campingVan_A1.jpeg', 6, 3),
(58, 'campingVan_A6.jpeg', 6, 3),
(59, 'campingVan_B1.jpeg', 7, 3),
(60, 'campingVan_B2.jpeg', 7, 3),
(61, 'campingVan_B3.jpeg', 7, 3),
(62, 'campingVan_B4.jpeg', 7, 3),
(63, 'campingVan_B5.jpeg', 7, 3),
(64, 'campingVan_B6.jpeg', 7, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `room_equipment`
--

CREATE TABLE `room_equipment` (
  `e_id` int(11) NOT NULL,
  `equipment` varchar(100) NOT NULL,
  `place` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_equipment`
--

INSERT INTO `room_equipment` (`e_id`, `equipment`, `place`) VALUES
(1, '一張雙人床', 'inside'),
(2, '兩張雙人床', 'inside'),
(3, '三張雙人床', 'inside'),
(4, '四張雙人床', 'inside'),
(5, '一張雙人床、兩張單人床', 'inside'),
(6, '室內沙發椅', 'inside'),
(7, '冷暖空調', 'inside'),
(8, '循環風扇', 'inside'),
(9, '捕蚊燈', 'inside'),
(10, '延長線', 'inside'),
(11, '茶几', 'inside'),
(12, '吹風機', 'inside'),
(13, '毛巾', 'inside'),
(14, '盥洗用具', 'inside'),
(15, '除濕機', 'inside'),
(16, '衣架', 'inside'),
(17, '快煮壺', 'inside'),
(18, '免費Wi-Fi', 'inside'),
(19, '寵物友善', 'all'),
(20, '帳內夜燈', 'inside'),
(21, '獨立衛浴', 'inside'),
(22, '氣氛串燈', 'outside'),
(23, '卡斯爐', 'outside'),
(24, '烤肉用具', 'outside'),
(25, '折疊桌、椅', 'outside'),
(26, '抹布', 'outside'),
(27, '煮水壼', 'outside'),
(28, '不鏽鋼餐具', 'outside'),
(29, '電蚊拍', 'outside'),
(30, '戶外工作燈', 'outside'),
(31, '戶外桌椅', 'outside'),
(32, '脫水機', 'all'),
(33, '洗衣機', 'all'),
(34, '冷凍、冷藏冰箱', 'all'),
(35, '販賣部/販賣機', 'all'),
(36, '公用衛浴', 'all'),
(37, '公用吹風機', 'all');

-- --------------------------------------------------------

--
-- 資料表結構 `room_eq_room`
--

CREATE TABLE `room_eq_room` (
  `eqr_id` int(11) NOT NULL,
  `eq_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_eq_room`
--

INSERT INTO `room_eq_room` (`eqr_id`, `eq_id`, `room_id`) VALUES
(1, 2, 1),
(2, 6, 1),
(3, 7, 1),
(4, 8, 1),
(5, 9, 1),
(6, 10, 1),
(7, 11, 1),
(8, 12, 1),
(9, 13, 1),
(10, 14, 1),
(11, 15, 1),
(12, 16, 1),
(13, 17, 1),
(14, 18, 1),
(15, 19, 1),
(16, 20, 1),
(17, 21, 1),
(18, 22, 1),
(19, 23, 1),
(20, 24, 1),
(21, 25, 1),
(22, 26, 1),
(23, 27, 1),
(24, 28, 1),
(25, 29, 1),
(26, 30, 1),
(27, 31, 1),
(28, 3, 2),
(29, 6, 2),
(30, 7, 2),
(31, 8, 2),
(32, 9, 2),
(33, 10, 2),
(34, 11, 2),
(35, 12, 2),
(36, 13, 2),
(37, 14, 2),
(38, 15, 2),
(39, 16, 2),
(40, 17, 2),
(41, 18, 2),
(42, 19, 2),
(43, 20, 2),
(44, 21, 2),
(45, 22, 2),
(46, 23, 2),
(47, 24, 2),
(48, 25, 2),
(49, 26, 2),
(50, 27, 2),
(51, 28, 2),
(52, 29, 2),
(53, 30, 2),
(54, 31, 2),
(55, 4, 3),
(56, 6, 3),
(57, 7, 3),
(58, 8, 3),
(59, 9, 3),
(60, 10, 3),
(61, 11, 3),
(62, 12, 3),
(63, 13, 3),
(64, 14, 3),
(65, 15, 3),
(66, 16, 3),
(67, 17, 3),
(68, 18, 3),
(69, 19, 3),
(70, 20, 3),
(71, 21, 3),
(72, 22, 3),
(73, 23, 3),
(74, 24, 3),
(75, 25, 3),
(76, 26, 3),
(77, 27, 3),
(78, 28, 3),
(79, 29, 3),
(80, 30, 3),
(81, 31, 3),
(82, 2, 4),
(83, 7, 4),
(84, 8, 4),
(85, 9, 4),
(86, 10, 4),
(87, 11, 4),
(88, 12, 4),
(89, 13, 4),
(90, 14, 4),
(91, 17, 4),
(92, 18, 4),
(93, 19, 4),
(94, 20, 4),
(95, 23, 4),
(96, 25, 4),
(97, 26, 4),
(98, 27, 4),
(99, 29, 4),
(100, 31, 4),
(101, 36, 4),
(102, 37, 4),
(103, 4, 5),
(104, 7, 5),
(105, 8, 5),
(106, 9, 5),
(107, 10, 5),
(108, 11, 5),
(109, 12, 5),
(110, 13, 5),
(111, 14, 5),
(112, 17, 5),
(113, 18, 5),
(114, 19, 5),
(115, 20, 5),
(116, 23, 5),
(117, 25, 5),
(118, 26, 5),
(119, 27, 5),
(120, 29, 5),
(121, 31, 5),
(122, 36, 5),
(123, 37, 5),
(124, 1, 6),
(125, 7, 6),
(126, 9, 6),
(127, 10, 6),
(128, 11, 6),
(129, 17, 6),
(130, 18, 6),
(131, 19, 6),
(132, 20, 6),
(133, 23, 6),
(134, 25, 6),
(135, 27, 6),
(136, 29, 6),
(137, 31, 6),
(138, 36, 6),
(139, 37, 6),
(140, 5, 7),
(141, 7, 7),
(142, 9, 7),
(143, 10, 7),
(144, 11, 7),
(145, 17, 7),
(146, 18, 7),
(147, 19, 7),
(148, 20, 7),
(149, 23, 7),
(150, 25, 7),
(151, 27, 7),
(152, 29, 7),
(153, 31, 7),
(154, 36, 7),
(155, 37, 7),
(156, 9, 8),
(157, 10, 8),
(158, 18, 8),
(159, 19, 8),
(160, 30, 8),
(161, 32, 8),
(162, 33, 8),
(163, 36, 8),
(164, 37, 8),
(165, 9, 9),
(166, 10, 9),
(167, 18, 9),
(168, 19, 9),
(169, 30, 9),
(170, 32, 9),
(171, 33, 9),
(172, 36, 9),
(173, 37, 9),
(174, 9, 10),
(175, 10, 10),
(176, 18, 10),
(177, 19, 10),
(178, 30, 10),
(179, 32, 10),
(180, 33, 10),
(181, 36, 10),
(182, 37, 10);

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
(1, 127, 1, 1, 4, 2, 3, 100, '2022-08-10', '2022-08-13', '2022-08-11 18:39:18'),
(2, 127, 1, 1, 4, 0, 1, 200, '2022-08-17', '2022-08-18', '2022-08-11 18:39:18'),
(3, 127, 1, 1, 4, 0, 3, 200, '2022-08-26', '2022-08-29', '2022-08-11 18:39:18'),
(4, 127, 2, 1, 8, 1, 3, 200, '2022-08-10', '2022-08-13', '2022-08-11 18:39:18'),
(5, 127, 3, 1, 8, 2, 2, 200, '2022-08-13', '2022-08-15', '2022-08-11 18:39:18'),
(6, 127, 3, 1, 8, 4, 4, 200, '2022-08-16', '2022-08-20', '2022-08-11 18:39:18'),
(7, 127, 3, 1, 8, 0, 3, 200, '2022-08-26', '2022-08-29', '2022-08-11 18:39:18'),
(8, 127, 3, 1, 8, 2, 1, 200, '2022-08-30', '2022-08-31', '2022-08-11 18:39:18'),
(9, 127, 4, 2, 4, 0, 1, 200, '2022-08-17', '2022-08-18', '2022-08-11 18:39:18'),
(10, 127, 5, 2, 8, 2, 5, 200, '2022-08-10', '2022-08-15', '2022-08-11 18:39:18'),
(11, 127, 7, 3, 4, 1, 3, 200, '2022-08-10', '2022-08-13', '2022-08-11 18:39:18'),
(12, 127, 5, 2, 8, 2, 4, 7800, '2022-08-22', '2022-08-26', '2022-08-16 15:34:44'),
(13, 127, 2, 1, 6, 2, 4, 16800, '2022-09-01', '2022-09-05', '2022-08-16 15:34:44');

-- --------------------------------------------------------

--
-- 資料表結構 `room_tag`
--

CREATE TABLE `room_tag` (
  `t_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_tag`
--

INSERT INTO `room_tag` (`t_id`, `type`) VALUES
(1, '獨立衛浴'),
(2, '附贈早餐'),
(3, '獨立陽台'),
(4, '一泊三食'),
(5, '冷暖空調'),
(6, '兒童遊樂區'),
(8, '無敵山景'),
(9, '絕美夜景'),
(10, '室內沙發椅'),
(11, '情侶首選'),
(12, '包套行程'),
(19, '不求人'),
(21, '防雨設備'),
(22, '公用衛浴'),
(23, '公共烤肉區');

-- --------------------------------------------------------

--
-- 資料表結構 `room_tag_room`
--

CREATE TABLE `room_tag_room` (
  `tr_sid` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_tag_room`
--

INSERT INTO `room_tag_room` (`tr_sid`, `tag_id`, `room_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 9, 1),
(7, 10, 1),
(8, 12, 1),
(10, 1, 2),
(11, 2, 2),
(12, 4, 2),
(13, 5, 2),
(14, 8, 2),
(15, 12, 2),
(17, 1, 3),
(18, 2, 3),
(19, 4, 3),
(20, 5, 3),
(21, 8, 3),
(22, 12, 3),
(23, 6, 4),
(24, 3, 4),
(25, 8, 4),
(26, 2, 4),
(27, 6, 5),
(29, 8, 5),
(30, 3, 5),
(31, 2, 5),
(32, 5, 6),
(33, 11, 6),
(36, 8, 6),
(38, 3, 6),
(40, 5, 7),
(41, 3, 7),
(42, 9, 7),
(43, 2, 7),
(44, 19, 8),
(45, 19, 9),
(46, 21, 9),
(47, 19, 10),
(48, 19, 10),
(49, 23, 8),
(50, 22, 8),
(51, 23, 9),
(52, 23, 10),
(53, 22, 9),
(54, 22, 10),
(55, 22, 4),
(56, 22, 5),
(57, 22, 6),
(58, 22, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `room_type`
--

CREATE TABLE `room_type` (
  `R_id` int(11) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `room_folder` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_type`
--

INSERT INTO `room_type` (`R_id`, `room_type`, `room_folder`) VALUES
(1, '頂級網美區', 'beauty'),
(2, '溫馨親子區', 'family'),
(3, '高級露營車', 'van'),
(4, '不求人露營區', 'camp');

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
  `Booking_Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `temporaryCart`
--

INSERT INTO `temporaryCart` (`sid`, `member_id`, `room_id`, `room_type_id`, `num_adults`, `num_children`, `perNight`, `total_price`, `start_date`, `end_date`, `Booking_Date`) VALUES
(1, 127, 1, 1, 5, 0, 2, 25600, '2022-08-23', '2022-08-25', '2022-08-12 17:55:05'),
(3, 127, 7, 3, 4, 0, 2, 9600, '2022-08-29', '2022-08-31', '2022-08-13 18:02:02'),
(9, 127, 4, 2, 6, 0, 2, 11600, '2022-08-13', '2022-08-15', '2022-08-13 19:01:31'),
(10, 127, 2, 1, 6, 0, 2, 33600, '2022-08-28', '2022-08-30', '2022-08-13 19:08:49'),
(11, 127, 6, 3, 2, 0, 2, 6000, '2022-08-28', '2022-08-30', '2022-08-13 19:21:52'),
(12, 127, 2, 1, 6, 0, 2, 33600, '2022-08-22', '2022-08-24', '2022-08-14 15:53:37'),
(14, 127, 2, 1, 6, 0, 2, 33600, '2022-08-30', '2022-08-31', '2022-08-14 17:30:29'),
(16, 146, 2, 1, 6, 2, 3, 50800, '2022-08-24', '2022-08-26', '2022-08-15 16:20:45'),
(18, 127, 4, 2, 4, 2, 4, 23600, '2022-08-22', '2022-08-25', '2022-08-15 17:36:14'),
(19, 127, 3, 1, 8, 2, 3, 62800, '2022-08-23', '2022-08-25', '2022-08-15 17:37:46'),
(23, 127, 7, 3, 4, 0, 1, 4800, '2022-08-27', '2022-08-28', '2022-08-16 15:01:18'),
(24, 127, 5, 2, 8, 2, 4, 31600, '2022-08-22', '2022-08-26', '2022-08-16 15:22:11'),
(25, 127, 2, 1, 6, 2, 4, 67600, '2022-09-01', '2022-09-05', '2022-08-16 15:22:45'),
(26, 127, 4, 2, 4, 0, 1, 5800, '2022-08-25', '2022-08-26', '2022-08-18 03:23:16');

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

--
-- 傾印資料表的資料 `tutorial`
--

INSERT INTO `tutorial` (`sid`, `res_name`, `step1`, `step1_img`, `step1_time`, `step2`, `step2_img`, `step2_time`, `step3`, `step3_img`, `step3_time`, `step4`, `step4_img`, `step4_time`, `step5`, `step5_img`, `step5_time`, `step6`, `step6_img`, `step6_time`) VALUES
(2, '牛油果雞蛋煙肉三文治', '1）先煎好一隻太陽蛋', 'OilEggMeatSandwich1.svg', 3, '2）將煙肉煎至焦香', 'OilEggMeatSandwich2.svg', 2, '3）使用醃肉油分將麵包煎香', 'OilEggMeatSandwich3.svg', 3, '4）牛油果起肉，切粒，輕輕攪拌至半果溶狀態', 'OilEggMeatSandwich4.svg', 3, '5）將配料順序放上方形麵包及灑上鹽及胡椒調味', 'OilEggMeatSandwich5.svg', 5, '', '', 0),
(6, '北非蛋', '1）預熱平底鍋，落油，將洋蔥、紅椒炒香。', 'africaEgg1.svg', 2, '2）放入蘑菇炒熱，再加入適量鹽、胡椒調味。', 'africaEgg2.svg', 2, '3）將罐頭番茄倒入平底鍋鍋，加入半杯清水，蓋上鍋蓋將番茄煮到軟爛，再收乾少少水。', 'africaEgg3.svg', 5, '4）在番茄糊中用匙羹挖幾個淺洞，打入雞蛋。', 'africaEgg4.svg', 3, '5）蓋上鍋蓋煮雞蛋，因應時間可製作流心蛋或全熟蛋', 'africaEgg5.svg', 10, '6）可在平底鍋烤麵包，烤脆兩面後配上北非蛋食。', '', 3),
(7, '香煎鮭魚佐時蔬', '1）鮭魚菲力撒上馬頓鹽調味。', 'salmonVeg1.svg', 1, '2）將鮭魚放上鐵板，開煎。', 'salmonVeg2.svg', 7, '3）將彩椒、櫛瓜跟香菇切丁成好入口的大小，不用侷限形狀，不切到手就可以了。', 'salmonVeg3.svg', 2, '4）在鐵板上拌炒蔬菜。', 'salmonVeg4.svg', 5, '5）起鍋後加入檸檬汁，完成！', 'salmonVeg5.svg', 1, '', '', 0),
(9, '章魚燒', '準備章魚燒的餡料，將章魚切成自己喜歡的大小，高麗菜切末，青蔥切成蔥花。', 'octopusball1.svg', 5, '中小火預熱章魚燒烤盤並刷上油，將預拌好的麵糊用大湯匙舀入章魚燒盤。', 'octopusball2.svg', 5, '待麵糊稍微凝固後放入章魚，這樣章魚才會置中。', 'octopusball3.svg', 5, '撒上高麗菜末、蔥末、天婦羅花，最後再撒上一層麵糊，稍微煮一會兒至麵糊稍微變硬。', 'octopusball4.svg', 7, '依照個人喜好抹上章魚燒醬、淋上美乃滋、海苔以及柴魚片後即可食用。', 'octopusball5.svg', 3, '', '', 0);

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
-- 資料表索引 `cart_order`
--
ALTER TABLE `cart_order`
  ADD PRIMARY KEY (`sid`);

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
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
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
-- 資料表索引 `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `room_CheckIn_Roles`
--
ALTER TABLE `room_CheckIn_Roles`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `room_id` (`room_id`);

--
-- 資料表索引 `room_detail_picture`
--
ALTER TABLE `room_detail_picture`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `roomType_id` (`roomType_id`),
  ADD KEY `room_id` (`room_id`);

--
-- 資料表索引 `room_equipment`
--
ALTER TABLE `room_equipment`
  ADD PRIMARY KEY (`e_id`);

--
-- 資料表索引 `room_eq_room`
--
ALTER TABLE `room_eq_room`
  ADD PRIMARY KEY (`eqr_id`),
  ADD KEY `eq_id` (`eq_id`),
  ADD KEY `room_id` (`room_id`);

--
-- 資料表索引 `room_reservation`
--
ALTER TABLE `room_reservation`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- 資料表索引 `room_tag`
--
ALTER TABLE `room_tag`
  ADD PRIMARY KEY (`t_id`);

--
-- 資料表索引 `room_tag_room`
--
ALTER TABLE `room_tag_room`
  ADD PRIMARY KEY (`tr_sid`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- 資料表索引 `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`R_id`);

--
-- 資料表索引 `temporaryCart`
--
ALTER TABLE `temporaryCart`
  ADD PRIMARY KEY (`sid`);

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_order`
--
ALTER TABLE `cart_order`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `credit_card`
--
ALTER TABLE `credit_card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favlist`
--
ALTER TABLE `favlist`
  MODIFY `favlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favlist_type`
--
ALTER TABLE `favlist_type`
  MODIFY `favlist_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `memberdata`
--
ALTER TABLE `memberdata`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_coupon`
--
ALTER TABLE `member_coupon`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `photowall`
--
ALTER TABLE `photowall`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipes`
--
ALTER TABLE `recipes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room`
--
ALTER TABLE `room`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_CheckIn_Roles`
--
ALTER TABLE `room_CheckIn_Roles`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_detail_picture`
--
ALTER TABLE `room_detail_picture`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_equipment`
--
ALTER TABLE `room_equipment`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_eq_room`
--
ALTER TABLE `room_eq_room`
  MODIFY `eqr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_reservation`
--
ALTER TABLE `room_reservation`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_tag`
--
ALTER TABLE `room_tag`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_tag_room`
--
ALTER TABLE `room_tag_room`
  MODIFY `tr_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `room_type`
--
ALTER TABLE `room_type`
  MODIFY `R_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `temporaryCart`
--
ALTER TABLE `temporaryCart`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `wallreply`
--
ALTER TABLE `wallreply`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `zipcode`
--
ALTER TABLE `zipcode`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `room_CheckIn_Roles`
--
ALTER TABLE `room_CheckIn_Roles`
  ADD CONSTRAINT `room_checkin_roles_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`sid`);

--
-- 資料表的限制式 `room_detail_picture`
--
ALTER TABLE `room_detail_picture`
  ADD CONSTRAINT `room_detail_picture_ibfk_1` FOREIGN KEY (`roomType_id`) REFERENCES `room_type` (`R_id`),
  ADD CONSTRAINT `room_detail_picture_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`sid`);

--
-- 資料表的限制式 `room_eq_room`
--
ALTER TABLE `room_eq_room`
  ADD CONSTRAINT `room_eq_room_ibfk_1` FOREIGN KEY (`eq_id`) REFERENCES `room_equipment` (`e_id`),
  ADD CONSTRAINT `room_eq_room_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`sid`);

--
-- 資料表的限制式 `room_tag_room`
--
ALTER TABLE `room_tag_room`
  ADD CONSTRAINT `room_tag_room_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`sid`),
  ADD CONSTRAINT `room_tag_room_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `room_tag` (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;