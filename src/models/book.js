// Database processing for book route
const connection = require('../helpers/mysql');
const query = require('../helpers/query');

module.exports = {
  getBookModel: () => {
    return new Promise((resolve, reject) => {
      connection.query(query.book.get, (err, result) => {
        if(err) {
          reject(err)
        }
        resolve(result);
        });
      });
  },
  createBookModel: (setData) => {
    return new Promise((resolve, reject) => {
      connection.query(query.book.post , setData, (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      });
    });
  },
  updateBookModel: (id, newData) => {
    return new Promise((resolve, reject) => {
      connection.query(query.book.update, [newData, id], (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      })
    })
  },
  deleteBookModel: (id) => {
    return new Promise((resolve, reject) => {
      connection.query(query.book.delete, id, (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      })
    })
  }
}