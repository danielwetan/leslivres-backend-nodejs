// Genre route
const express = require('express');
const router = express.Router();
const genreController = require('../controllers/genre');
const authMiddleware = require('../middleware/auth');
const verifyJwtToken = authMiddleware.verifyJwtToken
const checkRole = authMiddleware.checkRole

// const multer = require('../helpers/multer')
const multer = require('../helpers/multer');


router.get('/', genreController.getAllGenre);
router.post('/', multer.none(), genreController.postGenre);
router.put('/:id', multer.none(), genreController.updateGenre);
router.delete('/:id', genreController.deleteGenre);

module.exports = router;
