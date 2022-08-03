const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
const jwt = require("jsonwebtoken");
const router = express.Router();
const multer = require("multer");
const moment = require("moment-timezone");
const fileUpload = require("express-fileupload");

const { toDateString, toDatetimeString } = require(__dirname +
    "/modules/date-tools.js");

app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());
app.use(express.json());
app.use(express.static("public"));
app.use("/avatar_img", express.static(__dirname + "/./public/avartar_img"));

app.use(
    fileUpload({
        createParentPath: true,
    })
);

app.use((req, res, next) => {
    res.locals.toDateString = toDateString;
    res.locals.toDatetimeString = toDatetimeString;

    const auth = req.get("Authorization");
    res.locals.loginUser = null;
    if (auth && auth.indexOf("Bearer ") === 0) {
        const token = auth.slice(7);
        res.locals.loginUser = jwt.verify(token, process.env.JWT_SECRET);
    }

    next();
});

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
