const crypto = require('crypto');
require('dotenv').config();

const calculateToken = (userEmail = "") => {
    return crypto.createHash('md5').update(userEmail + process.env.PRIVATE_KEY).digest("hex");
};

module.exports = {calculateToken};