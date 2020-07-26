const connection = require('../helpers/mysql')
const query = require('../helpers/query')

module.exports = {
  getUserData: id => {
    return new Promise((resolve, reject) => {
      connection.query(query.user.get, id, (err, result) => {
        if(err) {
          reject(err)
        }
        delete result[0].password
        delete result[0].date_added
        delete result[0].date_updated
        resolve(result);
      })
    })
  }
}