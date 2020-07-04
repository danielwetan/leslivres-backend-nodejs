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
    single: "SELECT * FROM books WHERE id=?",
    post: "INSERT INTO books SET ?",
    update: "UPDATE books SET ? WHERE id=?",
    delete: "DELETE FROM books WHERE id=?"
  },
  auth: {
    register: "INSERT INTO users SET ?"
  }
}
