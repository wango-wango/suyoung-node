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

app.use("/", require(__dirname + "/routes/index"));
app.use("/booking", require(__dirname + "/routes/booking"));
app.use("/member", require(__dirname + "/routes/member"));
app.use("/join", require(__dirname + "/routes/join"));
app.use("/SuMap", require(__dirname + "/routes/SuMap"));
app.use("/Cart", require(__dirname + "/routes/Cart"));
app.use("/recipes", require(__dirname + "/routes/recipes"));
app.use("/act", require(__dirname + "/routes/act"));

app.use((req, res) => {
    res.send(`<h2>找不到頁面 404</h2>`);
});

app.listen(3700, () => {
    console.log("running in port 3700!");
});
