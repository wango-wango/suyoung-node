const express = require("express");
// 連結到資料庫
const db = require(__dirname + "../../modules/mysql-connect");
// 設定路由
const router = express.Router();
const bodyParser = require("body-parser");
const cors = require("cors");
const { toDateString, toDatetimeString } = require(__dirname +
    "../../modules/date-tools");

//extended： 使用 qs 進行解析，若為 false，則採用 querystring 進行解析，預設為 true
router.use(bodyParser.urlencoded({ extended: false }));
// cors 允許跨領域傳輸資料
router.use(cors());
// 轉議json 資料
router.use(express.json());

const getRoomHandler = async (req, res) => {
    let output = {
        roomList: [],
        roomDetail: [],
        tagList: [],
        eqiList: [],
        picList: [],
        otherRoomList: [],
        ruleList: [],
    };
    let personNum = req.query.personNum || "";

    if (personNum >= 2 && personNum < 4) {
        personNum = 2;
    } else if (personNum >= 4 && personNum < 6) {
        personNum = 4;
    } else if (personNum >= 6 && personNum < 8) {
        personNum = 6;
    }

    let roomSid = req.query.roomSid || "";

    let where = "";
    if (roomSid) where += `AND r.sid = ${roomSid}`;

    let wherePic = "";
    if (roomSid) wherePic += `WHERE rp.room_id = ${roomSid}`;

    let whereNot = "";
    if (roomSid) whereNot += `WHERE r.sid NOT IN (${roomSid})`;

    let wherePerson = "";

    if (personNum) wherePerson += `AND r.person_num = ${personNum}`;

    let whereRule = "";
    if (roomSid) whereRule += `WHERE room_id = ${roomSid}`;

    const sqlSelectRoom = `SELECT * FROM room r JOIN room_type rt ON r.room_type_id = rt.R_id ${where}`;
    const [r1] = await db.query(sqlSelectRoom);

    output.roomDetail = r1;

    const sqlSelectTag = `SELECT rt.type, r.sid FROM room_tag_room rtr JOIN room_tag rt ON rtr.tag_id = rt.t_id JOIN room r ON r.sid = rtr.room_id ${where};`;
    const [r2] = await db.query(sqlSelectTag);

    output.tagList = r2;

    const sqlSelectEquipment = `SELECT r.sid ,re.equipment ,re.place FROM room_eq_room rer JOIN room r ON r.sid = rer.room_id JOIN room_equipment re ON re.e_id = rer.eq_id ${where}`;
    const [r3] = await db.query(sqlSelectEquipment);

    output.eqiList = r3;

    const sqlRoomPicture = `SELECT * FROM room_detail_picture rp JOIN room_type rt ON rt.R_id = rp.roomType_id ${wherePic};`;
    const [r4] = await db.query(sqlRoomPicture);

    output.picList = r4;

    const sqlOtherRoom = `SELECT * FROM room r JOIN room_type rt ON r.room_type_id = rt.R_id ${whereNot} ${wherePerson}`;
    const [r5] = await db.query(sqlOtherRoom);

    output.otherRoomList = r5;

    const sqlRules = `SELECT * FROM room_CheckIn_Roles ${whereRule}`;
    const [r6] = await db.query(sqlRules);
    output.ruleList = r6;

    // 大魔王
    const {
        adults,
        nextDate,
        endDate,
        roomType,
        startPrice,
        endPrice,
        tagCheck,
        popular,
        recommend,
        roomSelector,
        searchPrice,
    } = req.query;

    /* ---- 從前端取值後 進行 sql 篩選 ---- */

    // 大於等於人數
    if (adults) where += `AND r.person_num >= ${adults} `;
    // 包含哪些房型
    if (roomType) where += `AND rt.R_id IN (${roomType}) `;
    // 包含哪些房間
    if (roomSelector) where += `AND r.sid IN (${roomSelector}) `;
    // 回傳全部最推薦的
    if (recommend === "1") where += `AND r.recommend = ${recommend} `;
    // 拿到價格後 比對價格在此區間內的房間
    if (startPrice && endPrice)
        where += `AND r.room_price BETWEEN ${startPrice} AND ${endPrice} `;

    // 把 價格多到少少到多 排序放在最後面
    let wherePrice = "";
    if(searchPrice=== "1") wherePrice += `ORDER BY room_price `;
    if(searchPrice=== "2") wherePrice += `ORDER BY room_price DESC `;

    // 確認是否含有該標籤的sid
    let tag = "";
    if (tagCheck) {
        tag += `AND rtr.tag_id IN (${tagCheck}) `;
    }

    const sqlCheckTag = `SELECT r.sid FROM room_tag_room rtr ,room_tag rt ,room r WHERE rtr.tag_id = rt.t_id AND rtr.room_id = r.sid ${tag} GROUP BY r.sid`;
    const [checkTagRoom] = await db.query(sqlCheckTag);

    // 只取sid 存到陣列中 
    const reCheckTagRoom = checkTagRoom.map((v) => v.sid);
    if (tagCheck) where += `AND r.sid IN (${reCheckTagRoom}) `;


    /* ------- 日期篩選 -------- */
    let date = "";
    // 因為顧客退房那天其他顧客也可以訂房，因此在前端回傳使用者輸入的隔一天進來後端做篩選
    // 判斷 最後一天有沒有包含在內 或是 第一天有沒有包含在內 或是 使用者輸入的日期 是否包含在 end_date 和 start_date
    if (nextDate && endDate) {
        date += `AND (end_date BETWEEN "${nextDate}" AND "${endDate}") OR (start_date BETWEEN "${nextDate}" AND "${endDate}") OR (("${nextDate}" BETWEEN start_date AND end_date)AND("${endDate}" BETWEEN start_date AND end_date)) GROUP BY room_id`;
    }
    
    // 查詢room_reservation 的訂單中含有該日期的sid
    const sqlReservationCount = `SELECT room_id FROM room_reservation WHERE 1 ${date}`;
    const [reservationCount] = await db.query(sqlReservationCount);

    // 查詢temporary_Cart 的訂單中含有該日期的sid
    const sqlTemporaryCount = `SELECT room_id FROM temporaryCart WHERE 1 ${date}`;
    const [temporaryCount] = await db.query(sqlTemporaryCount);
    

    // 取得sid 後 用map 轉成陣列 告訴 roomList 不能包含那些房間
    const reCount = reservationCount.map((v) => v.room_id);
    const teCount = temporaryCount.map((v) => v.room_id);

    // 合併兩個陣列的值
    const newCount = [...reCount, ...teCount];

    // 把陣列中重複的值篩選掉
    const finalCount = newCount.filter((ele, pos) => {
        return newCount.indexOf(ele) == pos;
    });

    // 最後判斷有輸入日期且finalCount有值的話 回傳r.sid 不包含那些
    if (nextDate && endDate) {
        if (finalCount && finalCount.length) {
            where += `AND r.sid NOT IN (${finalCount}) `;
        }
    }

    /* 查詢最熱門的訂單前三名 */
    if (popular === "1")
        // 利用子查詢 加入剛剛查訊出來的 room_id 和 num 加入到列表中
        // 再利用計數的 num 做排序
        where += `JOIN (
        SELECT room_id , COUNT(1) num FROM room_reservation GROUP BY room_id ORDER BY num DESC LIMIT 3
    ) rr
    ON r.sid=rr.room_id
    ORDER BY rr.num DESC `;

    // console.log(where);

    // 最後送出的 sql
    const sqlVecna = `SELECT * FROM room r JOIN room_type rt ON r.room_type_id = rt.R_id ${where} ${wherePrice}`;
    const [vecna] = await db.query(sqlVecna);
    console.log(sqlVecna);

    output.roomList = vecna;

    return output;
};


const getOrderDetailHandler = async (req, res) => {
    let memberID = req.query.memberId;
    
    // 取得 該會員所有的訂單編號
    const sqlOrderId = `SELECT order_id FROM order_detail WHERE member_id = ${memberID} GROUP BY order_id;`;

    const [OrderId] = await db.query(sqlOrderId);

    let output = [];
    // 用訂單編號跑回圈
    // 把每一個訂單的訂單細節存進去output
    for(let value of OrderId){
        // 取得房型資料
        const sqlOrderDetail1 = `SELECT * FROM order_detail WHERE  order_Type = 1 AND order_id = ${value.order_id}`
        // 取得活動資料
        const sqlOrderDetail2 = `SELECT * FROM order_detail WHERE  order_Type = 2 AND order_id = ${value.order_id}` 

        const [r1] = await db.query(sqlOrderDetail1)
        const [r2] = await db.query(sqlOrderDetail2)
        // 整合在一起之後
        const [r3] = [...r1,...r2];
        // 推進去output 
        output.push(r3);

    }
    
    return output;
}
// 房型
router.get("/selectRoom", async (req, res) => {
    const output = await getRoomHandler(req, res);
    res.json(output);
});

// 全部的tag
router.get("/selectTag", async (req, res) => {
    const sqlSelectTag = "SELECT * FROM room_tag";
    const [resultTag] = await db.query(sqlSelectTag);
    res.send(resultTag);
});

// favlist
router.get("/favlist", async (req, res) => {
    const { memberId } = req.query;
    const sqlFavlist = `SELECT favlist.fav_list_kind FROM favlist WHERE m_id = ${memberId} AND fav_list_type = 1`;
    const [resultFav] = await db.query(sqlFavlist);
    res.send(resultFav);
});

// 取得會員訂單資料
router.get("/selectMemberCart", async (req, res) => {
    const memberId = req.query.memberId;
    // 先取得該會員購物車資料 和 房型細節資料
    const sqlSelectRoom = `SELECT * FROM temporaryCart tc, room r , room_type rt WHERE tc.member_id = ${memberId} AND r.sid = tc.room_id AND tc.room_type_id = rt.R_id;`;
    const [result] = await db.query(sqlSelectRoom);

    for (let i = 0; i < result.length; i++) {
        result[i].start_date = toDateString(result[i].start_date);
        result[i].end_date = toDateString(result[i].end_date);
    }
    res.send(result);
});

// 取得活動資料
router.get("/selectCartCount", async (req, res) => {
    const memberId = req.query.memberId;
    // 先取得該會員購物車資料 和 房型細節資料
    const sqlAct = `SELECT COUNT(*) num FROM act_order WHERE member_id = ${memberId};`;
    const [result1] = await db.query(sqlAct);

    console.log(result1);
    const sqlRoom = `SELECT COUNT(*) num FROM temporaryCart WHERE member_id = ${memberId};`;
    const [result2] = await db.query(sqlRoom);
    console.log(result2);
    
    // res.send(result);
});

// 新增資料到favlist 收藏房型
router.post("/addKeep", async (req, res) => {
    const { roomSid, memberId, favType } = req.body;

    // 判斷是否已新增
    const sqlCountMemberRoom =
        "SELECT COUNT(1) total FROM `favlist` f WHERE f.m_id = ? AND f.fav_list_kind = ?";
    const [[{ total }]] = await db.query(sqlCountMemberRoom, [
        memberId,
        roomSid,
    ]);

    // 如果資料內沒有才加入
    if (!total) {
        const sqlInsertMemberRoom =
            "INSERT INTO `favlist`(`m_id`, `fav_list_type`, `fav_list_kind`) VALUES (?,?,?)";

        const [add] = await db.query(sqlInsertMemberRoom, [
            memberId,
            favType,
            roomSid,
        ]);
        // console.log(add);
    }
});

// 把商品存進去購物車內
router.post("/temporaryCart", async (req, res) => {
    const {
        roomSid,
        adults,
        kids,
        startDate,
        endDate,
        perNight,
        roomTotalPrice,
        room_type_id,
        memberId,
    } = req.body;
    console.log(req.body);

    const sqlInsertMemberRoom =
        "INSERT INTO `temporaryCart`( `member_id`, `room_id`, `room_type_id`, `num_adults`, `num_children`, `perNight`, `total_price`, `start_date`, `end_date`) VALUES (?,?,?,?,?,?,?,?,?)";

    const [temporaryCart] = await db.query(sqlInsertMemberRoom, [
        memberId,
        roomSid,
        room_type_id,
        adults,
        kids,
        perNight,
        roomTotalPrice,
        startDate,
        endDate,
    ]);
    console.log(temporaryCart);
});

//delete
router.delete("/deleteKeep", async (req, res) => {
    // 從api params 取前端回傳的值
    const { memberId, roomSid } = req.query;
    const sqlDeleteKeep =
        "DELETE FROM favlist WHERE m_id = ? AND fav_list_kind = ?;";
    const [result] = await db.query(
        sqlDeleteKeep,
        [memberId, roomSid],
        function (err, result) {
            if (err) {
                console.log(err);
            } else {
                console.log(result);
            }
        }
    );
    res.send(result);
});

// 清空該會員所有購物車內資料
router.delete("/deleteTemporaryCartAll", async (req, res) => {
    // 從api params 取前端回傳的值
    const { memberId } = req.query;
    const sqlDeleteAll =
        "DELETE FROM temporaryCart WHERE member_id = ? ;";
    const [result] = await db.query(
        sqlDeleteAll,
        [memberId],
        function (err, result) {
            if (err) {
                console.log(err);
            } else {
                console.log(result);
            }
        }
    );
    res.send(result);
});

// 刪除購物車內單筆資料
router.delete("/deleteTemporaryCart", async (req, res) => {
    // 從api params 取前端回傳的值
    const { memberId, roomSid ,startDate,endDate} = req.query;
    const sqlDeleteKeep =
        "DELETE FROM temporaryCart WHERE member_id = ? AND room_id = ? AND start_date = ? AND end_date = ?;";
    const [result] = await db.query(
        sqlDeleteKeep,
        [memberId, roomSid, startDate, endDate],
        function (err, result) {
            if (err) {
                console.log(err);
            } else {
                console.log(result);
            }
        }
    );
    res.send(result);
});

// 房型
router.get("/selectOrderDetail", async (req, res) => {
    const output = await getOrderDetailHandler(req, res);
    res.json(output);
});

//update
// router.put("/update:roomSid/:roomTypeId", async (req, res) => {
//     const RoomSid = req.params.roomSid;
//     const TypeSid = req.params.roomTypeId;
//     const sqlInsertRoom = `UPDATE room SET room_name = ?, room_price = ?, person_num = ?,room_image = ?, recommend = ?, create_at = NOW() WHERE sid = ${RoomSid};`;
//     const sqlInsertType = `UPDATE room_type SET room_type=? WHERE R_id = ${TypeSid}`;
//     // 從req.body 取前端回傳的值 並解構賦值
//     const { roomType, roomName, roomPrice, personNum, roomImg, roomRec } =
//         req.body;
//     const [result1] = await db.query(sqlInsertRoom, [
//         roomName,
//         roomPrice,
//         personNum,
//         roomImg,
//         roomRec,
//     ]);
//     const [result2] = await db.query(sqlInsertType, [roomType]);
//     const result3 = [...result1, ...result2];
//     res.send(result3);
// });

module.exports = router;
