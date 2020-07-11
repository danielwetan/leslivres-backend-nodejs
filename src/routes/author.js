// Author route
const express = require('express');
const router = express.Router();
const authorController = require('../controllers/author');
const authMiddleware = require('../middleware/auth');
const verifyJwtToken = authMiddleware.verifyJwtToken
// const checkRole = authMiddleware.checkRole
// const multer = require('../helpers/multer');
const multer = require('../helpers/multer');

router.get('/', authorController.getAllAuthor);
router.post('/', verifyJwtToken, multer.none(), authorController.postAuthor);
router.put('/:id', verifyJwtToken, multer.none(), authorController.updateAuthor);
router.delete('/:id', verifyJwtToken, authorController.deleteAuthor);

module.exports = router;

