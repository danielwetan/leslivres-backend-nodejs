const jwt = require('jsonwebtoken');
const config = require('../configs/global');
const helper = require('../helpers/response');

module.exports = {
  verifyJwtToken: (req, res, next) => {
    const splitToken = req.headers.authorization.split(' ')
    let mainToken = '';
    if(splitToken.length > 1) {
      mainToken = splitToken.pop(); 
    } else {
      mainToken = req.headers.authorization
    }
    try {
      const decoded = jwt.verify(mainToken, config.jwtSecretKey);      
      req.decodedToken = decoded;
      next();
    } catch (err) {
      // console.log(err.name);
      if(err.name === 'TokenExpiredError') {
        return helper.response(res, 'fail', 'Token expired!', 401); ////////////// If token expired give new token !!!!
      }
      return helper.response(res, 'fail', 'Invalid token', 401);
    }
  },
//  verifyJwtRefreshToken //
/*
  Proses membuat token baru dengan decode RefreshToken
  Kirim refresh token bersama token asli
  Jika kedua token habis maka user harus login ulang.
  Refresh token bisa diberi di new router atau middleware
*/

// Check Role
/*
Role admin => create, update, delete book
  Role user => borrow book
  Public user => access get router
*/
}


// 46:34