const crypto = require('crypto');
const jwt = require("jsonwebtoken");
require('dotenv').config();

const calculateToken = (userEmail = "") => {
    return crypto.createHash('md5').update(userEmail + process.env.PRIVATE_KEY).digest("hex");
};

const calculateJWTToken = (user) => {
    return jwt.sign({ email: user.email, id: user.id },  process.env.PRIVATE_KEY);
}

const decodeJWT = (user) => {
    return jwt.decode(user);
}

module.exports = {calculateToken, calculateJWTToken, decodeJWT};