const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
const jwt = require("jsonwebtoken");
const router = express.Router();
const multer = require("multer");

app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());
app.use(express.json());

app.use("/suyoung", require(__dirname + "/routes/index"));
app.use("/suyoung/booking", require(__dirname + "/routes/booking"));
app.use("/suyoung/member", require(__dirname + "/routes/member"));
app.use("/suyoung/join", require(__dirname + "/routes/join"));
app.use("/suyoung/SuMap", require(__dirname + "/routes/SuMap"));
app.use("/suyoung/Cart", require(__dirname + "/routes/Cart"));
app.use("/suyoung/recipes", require(__dirname + "/routes/recipes"));
app.use("/suyoung/act", require(__dirname + "/routes/act"));

app.use((req, res) => {
    res.send(`<h2>找不到頁面 404</h2>`);
});

app.listen(3700, () => {
    console.log("running in port 3700!");
});
