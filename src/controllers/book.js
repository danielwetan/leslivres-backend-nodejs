// Main logic for book route
const helper = require('../helpers/response');
const bookModel = require('../models/book');
const query = require('../helpers/query');
const redis = require('../middleware/redis');

module.exports = {
  getBook: async (req, res) => {
    try {
      let search = req.query.search;
      let status = req.query.status;
      let page = req.query.page;
      let genre = req.query.genre;
      // let id = req.query.id;

      const limit = "12"
      const offset = `${page * 12 - 12}`
      const baseQuery = `SELECT books.id as id, books.title as title, books.description as description, books.img as img, authors.name as author, genres.name as genre, books.status as status, books.date_added as added, books.date_updated as updated FROM ((books INNER JOIN authors ON books.author = authors.id) INNER JOIN genres ON books.genre = genres.id)`

      // Ternary operator for query params
      search && status && page ? query.book.get = `${baseQuery} WHERE title LIKE '%${search}%' AND status='${status}' LIMIT ${limit} OFFSET ${offset}`
        : search && status ? query.book.get = `${baseQuery} WHERE title LIKE '%${search}%' AND status='${status}' LIMIT ${limit}`
          : search && page ? query.book.get = `${baseQuery} WHERE title LIKE '%${search}%' LIMIT ${limit} OFFSET ${offset}`
            : status && page ? query.book.get = `${baseQuery} WHERE status='${status}' LIMIT ${limit} OFFSET ${offset}`
              : search ? query.book.get = `${baseQuery} WHERE title LIKE '%${search}%' LIMIT ${limit}`
                : status ? query.book.get = `${baseQuery} WHERE status='${status}'`
                  : genre ? query.book.get = `${baseQuery} WHERE genres.name='${genre}'`
                    : page > 1 ? query.book.get = `${baseQuery} LIMIT ${limit} OFFSET ${offset}`
                      : query.book.get = `${baseQuery} LIMIT ${limit}`

      const result = await bookModel.getBookModel();
      return helper.response(res, 'success', result, 200);
    } catch (err) {
      console.log('Error');
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  },
  getSingleBook: async (req, res) => {
    try {
      const id = req.params.id
      const result = await bookModel.getSingleBookModel(id);
      const entries = Object.entries(result[0]);
      const obj = Object.fromEntries(entries);
      // delete obj.created_at
      // delete obj.updated_at
      console.log("Hello from main controller")
      const name = 'product:';
      redis.caching(name, id, obj)
      return helper.response(res, 'success', result, 200);
    } catch (err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500)
    }
  },
  createBook: async (req, res) => {
    const setData = req.body;
    setData.img = req.file ? req.file.filename : '';
    console.log(setData)
    try {
      const result = await bookModel.createBookModel(setData);
      return helper.response(res, 'success', result, 201);
    } catch (err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    };
  },
  updateBook: async (req, res) => {
    const id = req.params.id;
    const newData = req.body;
    newData.img = req.file ? req.file.filename : '';
    try {
      const result = await bookModel.updateBookModel(id, newData);
      if (result.affectedRows == 1) {
        if (!newData.title) {
          return helper.response(res, 'success', 'value cannot be empty!', 200);
        }
        return helper.response(res, 'success', `Data with id ${id} successfully updated`, 200);
      }
      return helper.response(res, 'failed', `Data with id ${id} not found`, 404);
    } catch (err) {
      console.log(err);
      return helper.response(res, 'failed', err, 500);
    };
  },
  deleteBook: async (req, res) => {
    const id = req.params.id;
    try {
      const result = await bookModel.deleteBookModel(id);
      if (result.affectedRows == 1) {
        return helper.response(res, 'success', `Data with id ${id} successfully deleted`, 200);
      }
      return helper.response(res, 'failed', `Data with id ${id} not found`, 404);
    } catch (err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  }
}
