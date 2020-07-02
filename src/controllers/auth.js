// Main logic for auth route
const authModel = require('../models/auth');
const helper = require('../helpers/response');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const config = require('../configs/global');

module.exports = {
  register: async (req, res) => {
    const setData = req.body;
    const salt = bcrypt.genSaltSync(10);
    const hashPass = bcrypt.hashSync(setData.password, salt); // password encryption
    setData.password = hashPass;
    try {
      const result = await authModel.registerModel(setData);
      delete result.password;
      return helper.response(res, 'success', result, 200);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'fail', 'Something error!', 200);
    }
  },
  login: async (req, res) => {
    const loginData = req.body;
    try {
      const result = await authModel.loginModel(loginData.username);
      if(result.length > 0) {
        const hashPass = result[0].password;
        const checkPass = bcrypt.compareSync(loginData.password, hashPass); // match password with hashPass
        // console.log(checkPass); // check value of compare password
        if(checkPass) {
          // console.log(result[0].password); // display hash password
          delete result[0].password;
          
          const mainTokenData = {
            ...result[0],
            tokenType: 'main'
          } // console.log(tokenData); // contain name, role id, etc
          const mainToken = jwt.sign(mainTokenData, config.jwt.secretKey, { expiresIn: config.jwt.mainTokenLife }); // get jwt token
          
          const refreshTokenData = {
            ...result[0],
            tokenType: 'refresh'
          } 
          const refreshToken = jwt.sign(refreshTokenData, config.jwt.secretKey, { expiresIn: config.jwt.refreshTokenLife }); // get jwt token

          result[0].mainToken = mainToken
          result[0].refreshToken = refreshToken
          // console.log(token); // jwt token
          // console.log(tokenData.role);
          return helper.response(res, 'success', result, 200);
        }
        return helper.response(res, 'fail', 'Username or password is wrong!', 400);
      }
      return helper.response(res, 'fail', 'Username or password is wrong!', 400);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'fail', 'Something error!', 200);
    }
  }
}

