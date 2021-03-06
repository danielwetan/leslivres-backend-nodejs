const connection = require('../helpers/mysql');
const query = require('../helpers/query');

module.exports = {
  registerModel: (setData) => {
    return new Promise((resolve, reject) => {
      connection.query(query.auth.register, setData, (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      })
    })
  },
  loginModel: (username) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM users WHERE username=?', username, (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      })
    })
  }
}
