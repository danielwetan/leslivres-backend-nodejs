const connection = require('../helpers/mysql');
const query = require('../helpers/query');

module.exports = {
  getTransaction: () => {
    return new Promise((resolve, reject) => {
      connection.query(query.transaction.get, (err, result) => {
        if(err) {
          reject(err);
        }
        resolve(result);
      })
    })
  },
  createTransaction: setData => {
    return new Promise((resolve, reject) => {
      connection.query(query.transaction.post, setData, (err, result) => {
        if(err) {
          reject(err);
        }
        resolve(result);
      })
    })
  },
  updateTransaction: (id, newData) => {
    return new Promise((resolve, reject) => {
      connection.query(query.transaction.update, [newData, id],(err, result) => {
        if(err) {
          reject(err);
        }
        resolve(result);
      })
    })
  },
  deleteTransaction: id => {
    return new Promise((resolve, reject) => {
      connection.query(query.transaction.delete, id, (err, result) => {
        if(err) {
          reject(err);
        }
        resolve(result);
      })
    })
  }
}