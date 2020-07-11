// Book route
const express = require('express');
const router = express.Router();
const bookController = require('../controllers/book');
const multer = require('multer');
const multerHelper = require('../helpers/multer');
const storage = multerHelper.storage;
const upload = multer({ storage: storage, limits: {fieldSize: 1000000} })
const authMiddleware = require('../middleware/auth');
const verifyJwtToken = authMiddleware.verifyJwtToken
const checkRole = authMiddleware.checkRole

router.get('/', bookController.getBook)
router.get('/:id', bookController.getSingleBook)
router.post('/', upload.single('image'), bookController.createBook)
router.put('/:id', upload.single('image'), bookController.updateBook)
router.delete('/:id', bookController.deleteBook)

module.exports = router;
