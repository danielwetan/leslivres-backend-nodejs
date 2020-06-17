// Author route
const express = require('express');
const router = express.Router();
const authorController = require('../controllers/author');
const multer = require('../helpers/multer');
const authMiddleware = require('../middleware/auth');
const verifyJwtToken = authMiddleware.verifyJwtToken
const checkRole = authMiddleware.checkRole

router.get('/', authorController.getAllAuthor);
router.post('/',  verifyJwtToken, checkRole, multer.upload.none(), authorController.postAuthor);
router.put('/:id',  verifyJwtToken, checkRole, multer.upload.none(), authorController.updateAuthor);
router.delete('/:id',  verifyJwtToken, checkRole, authorController.deleteAuthor);

module.exports = router;

