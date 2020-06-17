const jwt = require('jsonwebtoken');
const config = require('../configs/global');
const helper = require('../helpers/response');
let decoded;

module.exports = {
  verifyJwtToken: (req, res, next) => {
    /// CREATE CONDITION WHEN USER NOT LOGGED IN HERE!!!
      const splitToken = req.headers.authorization.split(' ')
      let token = config.jwt.mainToken;
      if(splitToken.length > 1) {
        token = splitToken.pop(); 
      } else if(splitToken.length == 1) {
        token = req.headers.authorization
      } else { // Did this is useless?? check later when user not login error handling
        return helper.response(res, 'fail', 'You must loggin to do this action', 401);
    }
    try {
      decoded = jwt.verify(token, config.jwt.secretKey);     
      console.log(decoded);
      next();
    } catch (err) {
      // console.log(err.name);
      if(err.name === 'TokenExpiredError') {
        return helper.response(res, 'fail', 'Token expired!', 401); ////////////// If token expired give new token !!!!
      }
      return helper.response(res, 'fail', 'Invalid token', 401);
    }
  },
  checkRole: (req, res, next) => {
    try {
      const role = decoded.role
      if(role == 1) {
        next();
      } else {
        const msg = `You're not an admin!`
        return helper.response(res, 'fail', msg, 404)
      }
    } catch {
      return helper.response(res, 'fail', 'Something Error!!', 404);
    }
  }
}
