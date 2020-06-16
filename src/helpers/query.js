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
    post: "INSERT INTO books SET ?",
    update: "UPDATE books SET ? WHERE id=?",
    delete: "DELETE FROM books WHERE id=?"
  },
  auth: {
    register: "INSERT INTO users SET ?"
  }
}
