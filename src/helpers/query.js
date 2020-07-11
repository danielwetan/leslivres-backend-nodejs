// SQL query for models
module.exports = {
  author: {
    get: "SELECT * FROM authors",
    post: "INSERT INTO authors SET ?",
    update: "UPDATE authors SET ? WHERE id=?",
    delete: "DELETE FROM authors WHERE id=?"
  },
  genre: {
    get: "SELECT * FROM genres",
    post: "INSERT INTO genres SET ?",
    update: "UPDATE genres SET ? WHERE id=?",
    delete: "DELETE FROM genres WHERE id=?"
  },
  book: {
    get: "",
    // another: `
    // SELECT book.id AS id, book.title, book.description AS description, book.image AS image, genre.genre_name AS genre, author.author_name AS author, book.status, book.created_at, book.updated_at 
    // FROM book INNER JOIN genre ON book.genre_id = genre.genre_id INNER JOIN author ON book.author_id = author.author_id 
    // WHERE title LIKE ? OR author.author_name LIKE ? OR genre.genre_name LIKE ? OR book.status LIKE ? ORDER BY ${sortBy} ${sortType} LIMIT ? OFFSET ?
    // `,
    // single: "SELECT * FROM books WHERE id=?",
    single: `SELECT books.id as id, books.title as title, books.description as description, books.img as img, authors.name as author, genres.name as genre, books.status as status, books.date_added as added, books.date_updated as updated FROM books INNER JOIN authors ON books.author = authors.id INNER JOIN genres ON books.genre = genres.id WHERE books.id= ?`,
    post: "INSERT INTO books SET ?",
    update: "UPDATE books SET ? WHERE id=?",
    delete: "DELETE FROM books WHERE id=?"
  },
  transaction: {
    get: "SELECT transaction.id as id, users.username as user, books.title as book, transaction.status as status, transaction.count as count, transaction.borrow_date as borrow_date, transaction.return_date as return_date FROM books INNER JOIN transaction ON transaction.book = books.id INNER JOIN users ON transaction.user = users.id ORDER BY id DESC",
    post: "INSERT INTO transaction SET ?", // post new transaction
    update: "UPDATE transaction SET ? WHERE id=?", // update transaction (return book)
    delete: "DELETE FROM transaction WHERE id=?" // delete transaction
  },
  auth: {
    register: "INSERT INTO users SET ?"
  }
}
