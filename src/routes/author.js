// Author route
const express = require('express');
const router = express.Router();
const authorController = require('../controllers/author');
// const authMiddleware = require('../middleware/auth');
// const verifyJwtToken = authMiddleware.verifyJwtToken
// const checkRole = authMiddleware.checkRole
// const multer = require('../helpers/multer');
const multer = require('../helpers/multer');

router.get('/', authorController.getAllAuthor);
router.post('/', multer.none(), authorController.postAuthor);
router.put('/:id', multer.none(), authorController.updateAuthor);
router.delete('/:id', authorController.deleteAuthor);

module.exports = router;

