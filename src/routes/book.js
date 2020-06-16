// Book route
const express = require('express');
const router = express.Router();
const bookController = require('../controllers/book');
const multer = require('multer'); 
const multerHelper = require('../helpers/multer');
const storage = multerHelper.storage;
const upload = multer({ storage: storage })
const authMiddleware = require('../middleware/auth');

router.get('/', authMiddleware.verifyJwtToken ,bookController.getBook)
router.post('/', upload.single('image'), bookController.createBook)
router.put('/:id', upload.single('image'), bookController.updateBook)
router.delete('/:id', bookController.deleteBook)
module.exports = router;
