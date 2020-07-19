const connection = require('../helpers/mysql')
const query = require('../helpers/query')

module.exports = {
  getUserData: id => {
    return new Promise((resolve, reject) => {
      connection.query(query.user.get, id, (err, result) => {
        if(err) {
          reject(err)
        }
        resolve(result);
      })
    })
  }
}