const express = require("express");
// 連結到資料庫
const db = require(__dirname + "../../modules/mysql-connect");
// 設定路由
const router = express.Router();
const bodyParser = require("body-parser");
const cors = require("cors");
const { application } = require("express");

//extended： 使用 qs 進行解析，若為 false，則採用 querystring 進行解析，預設為 true
router.use(bodyParser.urlencoded({ extended: false }));
// cors 允許跨領域傳輸資料
router.use(cors());
// 轉議json 資料
router.use(express.json());

// router 一定要回傳module
module.exports = router;


router.get("/api/get", async (req, res) => {
    const sqlSelect = "SELECT * FROM recipes";
    const [result] = await db.query(sqlSelect)
    res.send(result);
})

router.get("/api/tutorial", async (req, res) => {
    const sqlSelect = "SELECT * FROM tutorial";
    const [result] = await db.query(sqlSelect)
    res.send(result);
})