const express = require("express");
// 連結到資料庫
const db = require(__dirname + "../../modules/mysql-connect");
// 設定路由
const router = express.Router();
const app = express();
const bodyParser = require("body-parser");
const cors = require("cors");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

//extended： 使用 qs 進行解析，若為 false，則採用 querystring 進行解析，預設為 true
router.use(bodyParser.urlencoded({ extended: false }));
// cors 允許跨領域傳輸資料
router.use(cors());
// 轉議json 資料
router.use(express.json());

router.post("/login", async (req, res) => {
    const output = {
        success: false,
        error: "",
        code: 0,
        data: {},
    };
    const sql = "SELECT * FROM memberdata WHERE m_username=?";
    const [r1] = await db.query(sql, [req.body.account]);

    if (!r1.length) {
        // 帳號錯誤
        output.code = 401;
        output.error = "帳密錯誤";
        return res.json(output);
    }
    //const row = r1[0];

    output.success = await bcrypt.compare(req.body.password, r1[0].m_passwd);
    if (!output.success) {
        // 密碼錯誤
        output.code = 402;
        output.error = "帳密錯誤";
    } else {
        // 成功登入
        const token = jwt.sign(
            {
                sid: r1[0].sid,
                account: r1[0].account,
            },
            process.env.JWT_SECRET
        );

        output.data = {
            token,
            account: r1[0].account,
        };
    }

    res.json(output);
});

// router 一定要回傳module
module.exports = router;
