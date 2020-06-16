// Database processing for Author route
const connection = require('../helpers/mysql');
const query = require('../helpers/query');

module.exports = {
  getAuthorModel: () => {
    return new Promise((resolve, reject) => {
      connection.query(query.author.get, (err, result) => {
        if(err) {
          reject(err)
        }
        resolve(result);
        });
      });
  },
  postAuthorModel: (setData) => {
    return new Promise((resolve, reject) => {
      connection.query(query.author.post , setData, (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      });
    });
  },
  updateAuthorModel: (id, newData) => {
    return new Promise((resolve, reject) => {
      connection.query(query.author.update, [newData, id], (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      })
    })
  },
  deleteAuthorModel: (id) => {
    return new Promise((resolve, reject) => {
      connection.query(query.author.delete, id, (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      })
    })
  }
}