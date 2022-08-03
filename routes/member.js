const express = require("express");
// 連結到資料庫
const db = require(__dirname + "../../modules/mysql-connect");
// 設定路由
const router = express.Router();
const bodyParser = require("body-parser");
const cors = require("cors");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const SqlString = require("sqlstring");
const { toDateString, toDatetimeString } = require(__dirname +
    "../../modules/date-tools");

//extended： 使用 qs 進行解析，若為 false，則採用 querystring 進行解析，預設為 true
router.use(bodyParser.urlencoded({ extended: false }));
// cors 允許跨領域傳輸資料
router.use(cors());
// 轉議json 資料
router.use(express.json());

router.use("/avatar_img", express.static(__dirname + "/../public/avartar_img"));

router.post("/upload-avatar/:userId", async (req, res) => {
    const userId = await req.params.userId;

    if (!userId) {
        return res.json({ message: "didn't get userId", code: "400" });
    }

    console.log(req.files.avatar.name);

    try {
        if (!req.files) {
            res.send({
                status: false,
                message: "No file uploaded",
            });
        } else {
            let avatar = req.files.avatar;

            //使用 mv() 方法來移動上傳檔案到要放置的目錄裡 (例如 "uploads")
            avatar.mv("./public/avatar_img/" + avatar.name);

            const url = `http://localhost:3700/avatar_img/${avatar.name}`;

            const sql = "UPDATE `memberdata` SET `m_avatar`=? WHERE `m_id` =? ";

            const [result] = await db.query(sql, [url, userId]);

            console.log(result);

            if (result.length) {
                res.json({
                    status: true,
                    message: "File is uploaded",
                    data: {
                        url: url,
                        name: avatar.name,
                        mimetype: avatar.mimetype,
                        size: avatar.size,
                    },
                });
            }
        }
    } catch (err) {
        res.status(500).json(err);
    }
});

router.put("/updatePassword/:userId", async (req, res, next) => {
    const userId = req.params.userId;

    if (!userId) {
        return res.json({ message: "didn't get userId", code: "400" });
    }

    if (!req.body.oldPassword) {
        return res.json({
            success: false,
            message: "oldPassword is empty",
            code: "400",
        });
    }
    if (!req.body.newPassword) {
        return res.json({
            success: false,
            message: "newPassword is empty",
            code: "401",
        });
    }
    if (!req.body.comfirmPassword) {
        return res.json({
            success: false,
            message: "comfirmPassword is empty",
            code: "402",
        });
    }

    if (req.body.newPassword !== req.body.comfirmPassword) {
        return res.json({
            success: false,
            message: "新密碼與確認密碼不符",
            code: "403",
        });
    }

    const getPwSql = "SELECT `m_passwd` FROM `memberdata` WHERE `m_id`=?";
    const [getPwResult] = await db.query(getPwSql, [userId]);

    if (!getPwResult.length) {
        return res.json({
            success: false,
            message: "沒有此用戶資料",
            code: "404",
        });
    } else {
        // console.log(getPwResult);
        // console.log(req.body.oldPassword);
        // console.log(getPwResult[0].m_passwd);

        const compare = await bcrypt.compare(
            req.body.oldPassword,
            getPwResult[0].m_passwd
        );

        console.log(compare);

        if (compare === true) {
            const newSql =
                "UPDATE `memberdata` SET  `m_passwd`=? WHERE `m_id`=?";

            const hashPw = await bcrypt.hash(req.body.newPassword, 10);

            const [newResult] = await db.query(newSql, [hashPw, userId]);

            console.log(newResult);

            return res.json({
                success: true,
                message: "修改成功",
                code: "200",
            });
        } else {
            return res.json({
                success: false,
                message: "輸入密碼與用戶密碼不符",
                code: "404",
            });
        }
    }
});

router.put("/:userId", async (req, res, next) => {
    const userId = req.params.userId;

    if (!userId) {
        return res.json({ message: "didn't get userId", code: "400" });
    }

    const user = req.body;

    if (!user.m_id || !user.email) {
        return res.json({ message: "fail", code: "400" });
    }

    const sql =
        "UPDATE `memberdata` SET `m_first_name`=?,`m_last_name`=?,`m_birthday`=?,`m_email`=?,`m_phone`=?,`m_city`=?,`m_area`=?,`m_addr`=? WHERE m_id=?";

    const [result] = await db.query(sql, [
        user.firstname,
        user.lastname,
        user.birthday,
        user.email,
        user.phone,
        user.county,
        user.area,
        user.address,
        user.m_id,
    ]);

    console.log(result);

    if (result.affectedRows) {
        return res.json({
            message: "success",
            code: "200",
            user: { ...user, id: userId },
        });
    } else {
        return res.json({ message: "fail123", code: "400" });
    }
});

router.get("/:userId", async (req, res, next) => {
    const userId = await req.params.userId;

    if (!userId) {
        return res.json({ message: "此用戶不存在", code: "400" });
    }

    const sql = "SELECT * FROM `memberdata` WHERE `m_id` = ?";

    try {
        const [result] = await db.query(sql, [userId]);

        result[0].m_birthday = toDateString(result[0].m_birthday);
        result[0].create_at = toDateString(result[0].create_at);

        console.log(result[0].create_at);

        if (result.length > 0) {
            return res.json({
                message: "success",
                code: "200",
                user: result[0],
            });
        } else {
            return res.json({ message: "fail", code: "204" });
        }
    } catch (error) {
        console.log("error occurred: ", error);
        return res.json({ message: "error", code: "500" });
    }
});

// router 一定要回傳module
module.exports = router;
