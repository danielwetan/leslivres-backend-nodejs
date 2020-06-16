// Database processing for genre route
const connection = require('../helpers/mysql');
const query = require('../helpers/query');

module.exports = {
  getGenreModel: () => {
    return new Promise((resolve, reject) => {
      connection.query(query.genre.get, (err, result) => {
        if(err) {
          reject(err)
        }
        resolve(result);
        });
      });
  },
  postGenreModel: (setData) => {
    return new Promise((resolve, reject) => {
      connection.query(query.genre.post , setData, (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      });
    });
  },
  updateGenreModel: (id, newData) => {
    return new Promise((resolve, reject) => {
      connection.query(query.genre.update, [newData, id], (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      })
    })
  },
  deleteGenreModel: (id) => {
    return new Promise((resolve, reject) => {
      connection.query(query.genre.delete, id, (err, result) => {
        if(err) {
          reject(err);
        };
        resolve(result);
      })
    })
  }
}