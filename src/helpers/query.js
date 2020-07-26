// SQL query for models
module.exports = {
  author: {
    get: "SELECT * FROM authors ORDER BY id DESC",
    post: "INSERT INTO authors SET ?",
    update: "UPDATE authors SET ? WHERE id=?",
    delete: "DELETE FROM authors WHERE id=?"
  },
  genre: {
    get: "SELECT * FROM genres ORDER BY id DESC",
    post: "INSERT INTO genres SET ?",
    update: "UPDATE genres SET ? WHERE id=?",
    delete: "DELETE FROM genres WHERE id=?"
  },
  book: {
    get: "",
    single: `SELECT books.id as id, books.title as title, books.description as description, books.img as img, authors.name as author, genres.name as genre, books.status as status, books.date_added as added, books.date_updated as updated FROM books INNER JOIN authors ON books.author = authors.id INNER JOIN genres ON books.genre = genres.id WHERE books.id= ?`,
    post: "INSERT INTO books SET ?",
    update: "UPDATE books SET ? WHERE id=?",
    delete: "DELETE FROM books WHERE id=?"
  },
  transaction: {
    get: "SELECT transaction.id as id, users.username as user, books.title as book, transaction.status as status, transaction.borrow_date as borrow_date, transaction.return_date as return_date FROM books INNER JOIN transaction ON transaction.book = books.id INNER JOIN users ON transaction.user = users.id ORDER BY id DESC",
    singleTransaction: "SELECT transaction.id as id, users.username as user, books.title as book, transaction.status as status, transaction.borrow_date as borrow_date, transaction.return_date as return_date FROM books INNER JOIN transaction ON transaction.book = books.id INNER JOIN users ON transaction.user = users.id WHERE users.id=? ORDER BY id DESC", // display borrow history for single user
    post: "INSERT INTO transaction SET ?", // post new transaction
    update: "UPDATE transaction SET ? WHERE id=?", // update transaction (return book)
    delete: "DELETE FROM transaction WHERE id=?", // delete transaction
  },
  auth: {
    register: "INSERT INTO users SET ?"
  },
  user: {
    get: "SELECT * from users WHERE id = ?"
  }
}
