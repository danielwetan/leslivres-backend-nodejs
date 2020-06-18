// Main logic for book route
const helper = require('../helpers/response');
const bookModel = require('../models/book');
const query = require('../helpers/query');

module.exports = {
  getBook: async (req, res) => {
    try {
      let search = req.query.search;
      let sort = req.query.sort;
      let page = req.query.page;
      
      // Ternary operator for query params
      search && sort && page ? query.book.get = `SELECT * FROM books\n WHERE title LIKE '%${search}%' AND status='${sort}' LIMIT 3 OFFSET ${page*3-3}`
      : search && sort ? query.book.get = `SELECT * FROM books\n WHERE title LIKE '%${search}%' AND status='${sort}' LIMIT 3`
      : search && page ? query.book.get = `SELECT * FROM books\n WHERE title LIKE '%${search}%' LIMIT 3 OFFSET ${page*3-3}`
      : sort && page ? query.book.get = `SELECT * FROM books\n WHERE status='${sort}' LIMIT 3 OFFSET ${page*3-3}`
      : search ? query.book.get = `SELECT * FROM books\n WHERE title LIKE '%${search}%' LIMIT 3`
      : sort ? query.book.get = `SELECT * FROM books\n WHERE status='${sort}' LIMIT 3`
      : page > 1 ? query.book.get = `SELECT * FROM books\n LIMIT 3 OFFSET ${page*3-3}`
      : query.book.get = "SELECT books.id as id, books.title as title, books.description as description, books.image as img, authors.name as author, genres.name as genre, books.status as status, books.date_added as added, books.date_updated as updated FROM ((books INNER JOIN authors ON books.author = authors.id) INNER JOIN genres ON books.genre = genres.id) LIMIT 3"

      const result = await bookModel.getBookModel();
      return helper.response(res, 'success', result, 200);
    } catch(err) {
      console.log('Error');
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  },
  createBook: async (req, res) => {
    const setData = req.body;
    setData.image = req.file ? req.file.filename : '';
    try {
      const result = await bookModel.createBookModel(setData);
      return helper.response(res, 'success', result, 201);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    };
  },
  updateBook: async (req, res) => {
    const id = req.params.id;
    const newData = req.body;
    newData.image = req.file ? req.file.filename : '';
    try {
      const result = await bookModel.updateBookModel(id, newData);
      if(result.affectedRows == 1) {
        if(!newData.title) {
          return helper.response(res, 'success', 'value cannot be empty!', 200);
        }
          return helper.response(res, 'success', `Data with id ${id} successfully updated`, 200);
     }
      return helper.response(res, 'failed', `Data with id ${id} not found`, 404);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    };
  },
  deleteBook: async (req, res) => {
    const id = req.params.id;
    try {
      const result = await bookModel.deleteBookModel(id);
      if(result.affectedRows == 1) {
        return helper.response(res, 'success', `Data with id ${id} successfully deleted`, 200);
      }
      return helper.response(res, 'failed', `Data with id ${id} not found`, 404);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  }
}
