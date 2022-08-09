const express = require("express");
// 連結到資料庫
const db = require(__dirname + "../../modules/mysql-connect");
// 設定路由
const router = express.Router();
const bodyParser = require("body-parser");
const cors = require("cors");
//設定假使用者
const fake_User = 5;

const getUserCart =async(user_id)=>{

    const sql = `SELECT r.*, c.quantity 
    FROM carts c 
    JOIN room r 
    ON c.room_id=r.sid 
    WHERE user_id=?
    ORDER BY c.created_at`;

    const [r] = await db.query(sql,[user_id]);

    return r;
}

//extended： 使用 qs 進行解析，若為 false，則採用 querystring 進行解析，預設為 true
router.use(bodyParser.urlencoded({ extended: false }));
// cors 允許跨領域傳輸資料
router.use(cors());
// 轉議json 資料
router.use(express.json());

//CRUD
//將商品加入購物車
router.post('/order/add', async(req,res)=>{
    const userId = await req.params.userId;

    console.log(userId);
    //判斷有沒有商品
    const output = {
        success : false,
        error : ''
    }
    if(!req.body.room_id || !req.body.quantity){
        output.error = '參數不足'
        return  res.json(output);
    }

    if( +req.body.quantity <1 ){
        output.error = '數量不能小於1';
        return  res.json(output);
    }
    //  判斷該商品是否加入購物車
    const sql3 = `SELECT COUNT(1) num FROM carts WHERE room_id=? AND user_id=?`;
    const [[{num}]] = await db.query(sql3, [req.body.room_id, fake_User]);
    if(num>0){
        output.error = '購物車內已經有這個商品'
        return  res.json(output);
    }

    const sql = `SELECT * FROM room WHERE sid=? `;
    const [r1] = await db.query(sql, [req.body.room_id]);
    if(!r1.length){
        output.error = '沒有此房型'
        return  res.json(output);
    }

    const sql2 = "INSERT INTO `carts`(`user_id`, `room_id`, `quantity`) VALUES (?, ?, ?)";
    //假設用戶編號為 FakeUser
    const [r2] = await db.query(sql2,[fake_User, req.body.room_id, req.body.quantity]);

    if(r2.affectedRows){
        output.success = true;
    }

    output.cart = await getUserCart(fake_User);
    res.json(output);
});

//寫入信用卡資訊
router.post('/order/card/add', async(req,res)=>{
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
    

//取得商品列表'
router.get('/', async(req,res)=>{
    res.json(await getUserCart(fake_User));
});

//修改
router.put('/', async(req,res)=>{
//room_sid,quan
const output = {
    success: false,
    error: "",
};
if (!req.body.room_id || !req.body.quantity) {
    output.error = "參數不足";
    return res.json(output);
}

if (+req.body.quantity < 1) {
    output.error = "數量不能小於 1";
    return res.json(output);
}

// 判斷該商品是否已經加入購物車
const sql3 = `SELECT COUNT(1) num FROM carts WHERE room_id=? AND user_id=?`;
const [[{ num }]] = await db.query(sql3, [req.body.room_id, fake_User]);
if (num <= 0) {
    output.error = "購物車內沒有這項商品";
    return res.json(output);
}


const sql2 = "UPDATE `carts` SET `quantity`=? WHERE room_id=? AND user_id=?";
const [r2] = await db.query(sql2, [
    req.body.quantity,
    req.body.room_id,
    fake_User,
]);
output.r2 = r2;

if (r2.affectedRows && r2.changedRows) {
    output.success = true;
}

output.cart = await getUserCart(fake_User);
res.json(output);

});

//刪除
router.delete('/', async(req,res)=>{
//room_id
    const sql = `DELETE FROM carts WHERE user_id=? AND room_id=?`;
    await db.query(sql, [fake_User, req.body.room_id]);

    res.json(await getUserCart(fake_User));
});

// router 一定要回傳module
module.exports = router;
