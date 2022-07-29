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

router.get("/select", async (req, res) => {
    const sqlSelectRoom =
        "SELECT * FROM `room` r JOIN `room_type` rt ON r.room_type_id = rt.R_id";
    const [result] = await db.query(sqlSelectRoom);
    res.send(result);
});
router.get("/selected:roomID", async (req, res) => {
    const roomID = req.params.roomID;
    const sqlSelectRoom = `SELECT * FROM room r JOIN room_type rt ON r.room_type_id = rt.R_id WHERE r.sid = ${roomID}`;
    const [result] = await db.query(sqlSelectRoom);
    res.send(result);
});

router.post("/add", async (req, res) => {
    const sqlInsertRoom =
        "INSERT INTO `room`(`room_name`, `room_price`, `room_type_id`,`person_num` ,`room_image`, `recommend`, `create_at`) VALUES (?,?,LAST_INSERT_ID(),?,?,?,NOW())";

    const sqlInsertRoomType = "INSERT INTO room_type( room_type ) VALUES (?);";

    const { roomType, roomName, roomPrice, personNum, roomImg, roomRec } =
        req.body;

    await db.query(sqlInsertRoomType, [roomType]);

    await db.query(sqlInsertRoom, [
        roomName,
        roomPrice,
        personNum,
        roomImg,
        roomRec,
    ]);
});

//delete
router.delete("/delete/:roomName", async (req, res) => {
    // 從api params 取前端回傳的值
    const deleteRoom = req.params.roomName;
    const sqlDeleteRoom = "DELETE FROM `room` WHERE `room`.`room_name` = ?";
    const [result] = await db.query(
        sqlDeleteRoom,
        [deleteRoom],
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
router.put("/update:roomSid/:roomTypeId", async (req, res) => {
    const RoomSid = req.params.roomSid;
    const TypeSid = req.params.roomTypeId;
    const sqlInsertRoom = `UPDATE room SET room_name = ?, room_price = ?, person_num = ?,room_image = ?, recommend = ?, create_at = NOW() WHERE sid = ${RoomSid};`;
    const sqlInsertType = `UPDATE room_type SET room_type=? WHERE R_id = ${TypeSid}`;
    // 從req.body 取前端回傳的值 並解構賦值
    const { roomType, roomName, roomPrice, personNum, roomImg, roomRec } =
        req.body;
    const [result1] = await db.query(sqlInsertRoom, [
        roomName,
        roomPrice,
        personNum,
        roomImg,
        roomRec,
    ]);
    const [result2] = await db.query(sqlInsertType, [roomType]);
    const result3 = [...result1, ...result2];
    res.send(result3);
});

module.exports = router;
