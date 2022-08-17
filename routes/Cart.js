const express = require("express");
// 連結到資料庫
const db = require(__dirname + "../../modules/mysql-connect");
// 設定路由
const router = express.Router();
const bodyParser = require("body-parser");
const cors = require("cors");
const nodemailer = require("nodemailer");
const OrderList = require(__dirname + '/../modules/OrderList');
const { toDateString, toDatetimeString } = require(__dirname +
    "../../modules/date-tools");

//extended： 使用 qs 進行解析，若為 false，則採用 querystring 進行解析，預設為 true
router.use(bodyParser.urlencoded({ extended: false }));
// cors 允許跨領域傳輸資料
router.use(cors());
// 轉議json 資料
router.use(express.json());

//=================nodeamiler
//send email
function sendEmail(email1) {
    var email1 = "shinderr0125@gmail.com"
    

    var mail = nodemailer.createTransport({
        host: "smtp.gmail.com",
        port: 465,
        auth: {
            user: "shinderr0125@gmail.com",
            pass: "zzukvqfcndhvbcrh",
        },
    });

    var mailOptions = {
        from: "shinderr0125@gmail.com",
        to: email1,
        subject: "shuyoung舒營 訂單編號：{order_id}",
        html: 
        `<h1>親愛的新德，您好</h1>
        <p>感謝您</p>
        `

    };

    mail.sendMail(mailOptions, function (error, info) {
        if (error) {
            console.log("flase");
        } else {
            console.log("success");
        }
    });
}

//================nodemailer

// router.post("/orderDetail-email", async (req, res, next) => {
    
//     var email = "shinderr0125@gmail.com";

//     var order_id = req.body.order_id;

//     console.log("email",order_id);
    

//         res.json({
//             success: true,
//             message: "驗證成功，正在寄送電子郵件...",
//             code: "200",
//         });

//         var sent = sendEmail(email, order_id);

//         if (sent != "0") {
//             console.log("信件已成功寄出");
//         }
// });

//CRUD
//將商品加入購物車
router.post('/order/add', async(req,res)=>{
    const userId = await req.params.userId;

    console.log(userId);
    let output ={
        success: false,
        error:'',
        insertId: 0,
    };
    
    if(!req.body.orderItems.room_id > 1){
        output.error = '參數不足'
        return  res.json(output);
    }

    if( +req.body.quantity <1 ){
        output.error = '數量不能小於1';
        return  res.json(output);
    }
     //判斷該商品是否加入購物車
    const sql3 = `SELECT COUNT(1) num FROM room_reservation WHERE room_id=?`;
    const [[{num}]] = await db.query(sql3, [req.body.orderItems.room_id]);
    if(num>0){
        output.error = '購物車內已經有這個商品'
        return  res.json(output);
    }

    for (let item of req.body.orderItems){
        const sql2 = "INSERT INTO `room_reservation` SET ?";
        const [r2] = await db.query(sql2, [item]);
        console.log(req.body)
    }

    output = {...output, body: req.body.orderItems};
    res.json(output);
});

//將活動加入購物車
router.post('/act/add', async(req,res)=>{
    const userId = await req.params.userId;

    console.log(userId);
    let output ={
        success: false,
        error:'',
        insertId: 0,
    };

    for (let item of req.body.orderAct){
        const sql3 = "INSERT INTO `act_order` SET ?";
        const [r3] = await db.query(sql3, [item]);
        console.log(req.body)
    }

    output = {...output, body: req.body.orderAct};
    res.json(output);
});

//寫入信用卡資訊
router.post('/card/add', async(req,res)=>{
    let output ={
        success: false,
        error:'',
        insertId: 0,
    };
    console.log(req.body)
    const member = req.body.member_id;
    const number = req.body.card_number;
    const date = req.body.expire_date;

    const creditCardsql = "INSERT INTO `credit_card`(`m_id`, `card_number`, `expire_date`) VALUES( ?, ?, ?) ";

    const [r3] = await db.query(creditCardsql, [member, number, date]);

    if(r3.affectedRows){
        output.success = true;
    }
    res.json(output); 
});

//寫入訂單資訊
router.post('/orderDetail/add', async(req,res)=>{
    let output ={
        success: false,
        error:'',
        insertId: 0,
    };
    console.log(req.body.orderDetail)

    for (let item of req.body.orderDetail){
        const sql3 = "INSERT INTO `order_detail` SET ?";
        const [r3] = await db.query(sql3, [item]);



        console.log(r3)
        console.log(req.body.orderDetail)
    }

    const emailOrder = req.body.orderDetail[0]
    const emailActOrder = req.body.orderDetail[1]

    console.log(emailOrder);

    //寄發驗證信
    var email1 = "shinderr0125@gmail.com"
    
    var mail = nodemailer.createTransport({
        host: "smtp.gmail.com",
        port: 465,
        auth: {
            user: "shinderr0125@gmail.com",
            pass: "zzukvqfcndhvbcrh",
        },
    });

    var mailOptions = {
        from: "shinderr0125@gmail.com",
        to: email1,
        subject: `shuyoung舒營 訂單編號：${emailOrder.order_id}`,
        html:
         `
         <h1>舒營（SHUYOUNG）</h1>
         <h2>親愛的新德，您好，以下為訂單資訊</h2>
         <p>訂單編號：${emailOrder.order_id}</p>
         <p>金額：${emailOrder.total_price}</p>
         <p>房型：</p>
         <p>入住房型：${emailOrder.room_name}</p>
         <p>入住日期：${emailOrder.start_date}</p>
         <p>天數：${emailOrder.perNight}</p>
         <p>活動：</p>
         <p>活動名稱：${emailActOrder.act_name}</p>
         <p>活動名稱：${emailActOrder.act_people}</p>
         <p>舒營期待您的到來</p>
         `
    };

    mail.sendMail(mailOptions, function (error, info) {
        if (error) {
            console.log("flase");
        } else {
            console.log("success");
        }
    });

    output = {...output, body: req.body.orderDetail};
    res.json(output);
});

//取得訂單內容
router.get('/orderDetailFinal', async (req, res)=>{
    let orderSid = req.query.orderSid;
    let orderType1 = req.query.orderType1;
    let orderType2 = req.query.orderType2;
    const sql3 = "SELECT * FROM `order_detail` WHERE 1 AND order_id = ? AND order_Type = ?;";
    
    let output = {
        roomList: [],
        actList: [],
    };
    const [r1] = await db.query(sql3, [orderSid,orderType1]);

    for (let i = 0; i < r1.length; i++) {
        r1[i].start_date = toDateString(r1[i].start_date);
        r1[i].end_date = toDateString(r1[i].end_date);
    }
    output.roomList = r1;

    const [r2] = await db.query(sql3, [orderSid,orderType2]);
    
    for (let i = 0; i < r2.length; i++) {
        r2[i].act_day = toDateString(r2[i].act_day);
    }
    output.actList = r2;

    console.log("orderSid",orderSid,"orderType1",orderType1,"orderType2",orderType2)
    console.log("r1",r1)
    console.log("r2",r2)
    console.log("output",output)

    res.json(output);
});

//取得Coupn
router.get('/coupn/:CouponId', async (req, res)=>{
    const couponId = await req.params.CouponId;
    
    let output ={
        success: false,
        error:'',
        insertId: 0,
    };

    console.log(couponId);

    if (!couponId) {
        return res.json({ message: "無優惠碼資訊", code: "400" });
    }

    const couponsql = "SELECT * FROM `coupon` WHERE `discount_number` = ? ";

    try {
        const [result] = await db.query( couponsql , [couponId]);

        if (result.length > 0) {
            return res.json({
                message: "success",
                code: "200",
                coupon: result[0].coupon_discount,
            });
        } else {
            return res.json({ message: "fail", code: "204" });
        }
    } catch (error) {
        console.log("error occurred: ", error);
        return res.json({ message: "error", code: "500" });
    }
});

// update member_coupon set coupon_status = 1 where coupon_id = 

// router 一定要回傳module
module.exports = router;
