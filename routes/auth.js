const authRouter = require('express').Router();
const User = require('../models/user');
const {calculateToken, calculateJWTToken} = require('../helpers/users');

authRouter.post('/login', (req, res) => {
  const { email, password } = req.body;
  User.findByEmail(email).then((user) => {
    if (!user) res.status(401).send('Invalid credentials');
    else {
      User.verifyPassword(password, user.hashedPassword).then(
        (passwordIsCorrect) => {
          if (passwordIsCorrect) {
            const token = calculateJWTToken(user)
            res.cookie('user_token', token)
            res.send("You are logged in")
          }
          else res.status(401).send('Invalid credentials');
        }
      );
    }
  });
});

module.exports = authRouter;
