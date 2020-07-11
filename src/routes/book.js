// Book route
const express = require('express');
const router = express.Router();
const bookController = require('../controllers/book');
const authMiddleware = require('../middleware/auth');
// const verifyJwtToken = authMiddleware.verifyJwtToken
// const checkRole = authMiddleware.checkRole

// const multer = require('multer');
// const multerHelper = require('../helpers/multer');
// const storage = multerHelper.storage;
// const upload = multer({ storage: storage, limits: {fieldSize: 1000000} })

const multer = require('../helpers/multer');

router.get('/', bookController.getBook)
router.get('/:id', bookController.getSingleBook)
router.post('/', multer.single('image'), bookController.createBook)
router.put('/:id', multer.single('image'), bookController.updateBook)
router.delete('/:id', bookController.deleteBook)

module.exports = router;
