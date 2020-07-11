// Genre route
const express = require('express');
const router = express.Router();
const genreController = require('../controllers/genre');
const authMiddleware = require('../middleware/auth');
const verifyJwtToken = authMiddleware.verifyJwtToken
const multer = require('../helpers/multer');
// const checkRole = authMiddleware.checkRole

router.get('/', genreController.getAllGenre);
router.post('/', verifyJwtToken, multer.none(), genreController.postGenre);
router.put('/:id', verifyJwtToken, multer.none(), genreController.updateGenre);
router.delete('/:id', verifyJwtToken, genreController.deleteGenre);

module.exports = router;
