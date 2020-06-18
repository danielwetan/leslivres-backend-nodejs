const jwt = require('jsonwebtoken');
const config = require('../configs/global');
const helper = require('../helpers/response');
let decoded;

module.exports = {
  verifyJwtToken: (req, res, next) => {
      const splitToken = req.headers.authorization.split(' ')
      let token = config.jwt.mainToken;
      if(splitToken.length > 1) {
        token = splitToken.pop(); 
      } else if(splitToken.length == 1) {
        token = req.headers.authorization
      }
    try {
      decoded = jwt.verify(token, config.jwt.secretKey);     
      console.log(decoded);
      next();
    } catch (err) {
      if(err.name === 'TokenExpiredError') {
        return helper.response(res, 'fail', 'Token expired!', 401);
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
