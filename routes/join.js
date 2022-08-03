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
const SqlString = require("sqlstring");

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
        output.error = "查無此帳號，請先申請會員";
        return res.json(output);
    }
    const row = r1[0];
    console.log(row);

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
                account: r1[0].m_username,
            },
            process.env.JWT_SECRET
        );

        output.data = {
            token,
            account: r1[0].m_username,
            sid: r1[0].m_id,
        };
        console.log(output.data);
    }

    res.json(output);
});

router.post("/register", async (req, res) => {
    const { account, password, email } = req.body;

    //check if data is missing
    if (!account || !password || !email) {
        return res.json({ message: "缺少資料", code: "400" });
    }

    //check if memberdata already exsited
    const checkSql = "SELECT * FROM `memberdata` WHERE m_username =?";
    const [checkResult] = await db.query(checkSql, [account]);

    if (checkResult.length > 0) {
        console.log(checkResult);
        return res.json({ message: "fail", code: "400" });
    } else {
        const hashPw = await bcrypt.hash(password, 10);

        const sql =
            "INSERT INTO `memberdata`( `m_username`, `m_passwd`, `m_email`,  `create_at`) VALUES (?,?,?,NOW())";
        const [result] = await db.query(sql, [account, hashPw, email]);
        res.json(result);
    }
});

router.get("/check-login", async (req, res, next) => {
    // let output = {
    //     success: false,
    //     error: "",
    // };
    // if (res.locals.loginUser && res.locals.loginUser.account) {
    //     output.success = true;
    // } else {
    //     output.error = "沒有權限，請先登入";
    // }
    // output.loginUser = res.locals.loginUser;
    // res.json(output);
});

// router 一定要回傳module
module.exports = router;
