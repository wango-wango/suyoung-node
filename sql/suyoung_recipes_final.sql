-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-08-17 15:39:05
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
-- 資料庫: `shuyoung`
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
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
