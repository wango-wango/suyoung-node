const express = require("express");
// 連結到資料庫
const db = require(__dirname + "../../modules/mysql-connect");
// 設定路由
const router = express.Router();
const bodyParser = require("body-parser");
const cors = require("cors");

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
    let roomSid = req.query.roomSid || "";

    let where = "WHERE 1 ";
    if (roomSid) where += `AND r.sid = ${roomSid}`;

    let wherePic = "";
    if (roomSid) wherePic += `WHERE rp.room_id = ${roomSid}`;

    let whereNot = "";
    if (roomSid) whereNot += `WHERE r.sid NOT IN (${roomSid})`;

    let wherePerson = "";
    if (personNum) wherePerson += `AND r.person_num <= ${personNum}`;

    let whereRule = "";
    if (roomSid) whereRule += `WHERE room_id = ${roomSid}`;

    const sqlSelectRoom = `SELECT * FROM room r JOIN room_type rt ON r.room_type_id = rt.R_id ${where}`;
    const [r1] = await db.query(sqlSelectRoom);

    // console.log(r1);
    output.roomDetail = r1;

    const sqlSelectTag = `SELECT rt.type, r.sid FROM room_tag_room rtr JOIN room_tag rt ON rtr.tag_id = rt.t_id JOIN room r ON r.sid = rtr.room_id ${where};`;
    const [r2] = await db.query(sqlSelectTag);

    // console.log(r2);
    output.tagList = r2;

    const sqlSelectEquipment = `SELECT r.sid ,re.equipment ,re.place FROM room_eq_room rer JOIN room r ON r.sid = rer.room_id JOIN room_equipment re ON re.e_id = rer.eq_id ${where}`;
    const [r3] = await db.query(sqlSelectEquipment);
    // res.send(r1);
    // console.log(r3);
    output.eqiList = r3;

    const sqlRoomPicture = `SELECT * FROM room_detail_picture rp JOIN room_type rt ON rt.R_id = rp.roomType_id ${wherePic};`;
    const [r4] = await db.query(sqlRoomPicture);

    // console.log(r4);
    output.picList = r4;

    const sqlOtherRoom = `SELECT * FROM room r JOIN room_type rt ON r.room_type_id = rt.R_id ${whereNot} ${wherePerson}`;
    const [r5] = await db.query(sqlOtherRoom);

    // console.log(r5);
    // console.log(sqlOtherRoom);
    output.otherRoomList = r5;

    const sqlRules = `SELECT * FROM room_CheckIn_Roles ${whereRule}`;
    const [r6] = await db.query(sqlRules);

    // 大魔王
    const {
        adults,
        startDate,
        endDate,
        roomType,
        startPrice,
        endPrice,
        tagCheck,
        popular,
        recommend,
        roomSelector,
    } = req.query;

    if (adults) where += `AND r.person_num < ${adults}`;
    if (roomType) where += `AND rt.room_folder IN ("${roomType}")`;
    if (tagCheck) where += `AND rtag.t_id IN (${tagCheck})`;
    if (roomSelector) where += `AND r.room_name IN ("${roomSelector}")`;
    if (recommend) where += `AND r.recommend = ${recommend}`;
    if (startPrice && endPrice)
        where += `r.room_price BETWEEN ${startPrice} AND ${endPrice}`;

    const sqlVecna = `SELECT * FROM room r JOIN room_type rt ON r.room_type_id = rt.R_id ${where}`;
    const [vecna] = await db.query(sqlVecna);

    console.log(vecna);
    output.roomList = vecna;

    return output;
};

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
    const sqlFavlist = `SELECT favlist.fav_list_kind FROM favlist WHERE m_id = ${memberId}`;
    const [resultFav] = await db.query(sqlFavlist);
    res.send(resultFav);
});

// router.get("/selected:roomID", async (req, res) => {
//     const roomID = req.params.roomID;
//     const sqlSelectRoom = `SELECT * FROM room r JOIN room_type rt ON r.room_type_id = rt.R_id WHERE r.sid = ${roomID}`;
//     const [result] = await db.query(sqlSelectRoom);
//     res.send(result);
// });

// 新增資料到favlist
router.post("/addKeep", async (req, res) => {
    const { roomSid, memberId, favType } = req.body;

    // 判斷是否已新增
    const sqlCountMemberRoom =
        "SELECT COUNT(1) total FROM `favlist` f WHERE f.m_id = ? AND f.fav_list_kind = ?";
    const [[{ total }]] = await db.query(sqlCountMemberRoom, [
        memberId,
        roomSid,
    ]);

    // console.log(total);
    // 如果資料內沒有才加入
    if (!total) {
        const sqlInsertMemberRoom =
            "INSERT INTO `favlist`(`m_id`, `fav_list_type`, `fav_list_kind`) VALUES (?,?,?)";

        const [add] = await db.query(sqlInsertMemberRoom, [
            memberId,
            favType,
            roomSid,
        ]);
        console.log(add);
    }
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
