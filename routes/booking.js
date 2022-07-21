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

module.exports = router;
