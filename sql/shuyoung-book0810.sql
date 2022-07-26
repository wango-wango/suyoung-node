-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 08 月 10 日 06:11
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
  `Booking_Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `price` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `room_reservation`
--

INSERT INTO `room_reservation` (`sid`, `member_id`, `room_id`, `room_type_id`, `num_adults`, `num_children`, `Booking_Date`, `price`, `start_date`, `end_date`) VALUES
(1, 127, 1, 1, 4, 2, '2022-08-09 05:41:41', 100, '2022-08-10', '2022-08-13'),
(2, 127, 1, 1, 4, 0, '2022-08-09 05:41:41', 200, '2022-08-17', '2022-08-18'),
(3, 127, 1, 1, 4, 0, '2022-08-09 05:41:41', 200, '2022-08-26', '2022-08-29'),
(4, 127, 2, 1, 8, 1, '2022-08-09 05:41:41', 200, '2022-08-10', '2022-08-13'),
(5, 127, 3, 1, 8, 2, '2022-08-09 05:41:41', 200, '2022-08-13', '2022-08-15'),
(6, 127, 3, 1, 8, 4, '2022-08-09 05:41:41', 200, '2022-08-16', '2022-08-20'),
(7, 127, 3, 1, 8, 0, '2022-08-09 05:41:41', 200, '2022-08-26', '2022-08-29'),
(8, 127, 3, 1, 8, 2, '2022-08-09 05:41:41', 200, '2022-08-30', '2022-08-31'),
(9, 127, 4, 2, 4, 0, '2022-08-09 05:41:41', 200, '2022-08-17', '2022-08-18'),
(10, 127, 5, 2, 8, 2, '2022-08-09 05:41:41', 200, '2022-08-10', '2022-08-15'),
(11, 127, 7, 3, 4, 1, '2022-08-09 05:41:41', 200, '2022-08-10', '2022-08-13');

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

--
-- 已傾印資料表的索引
--

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
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

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
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
