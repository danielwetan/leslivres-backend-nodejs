// Genre route
const express = require('express');
const router = express.Router();
const genreController = require('../controllers/genre');
const multer = require('../helpers/multer')
const authMiddleware = require('../middleware/auth');
const verifyJwtToken = authMiddleware.verifyJwtToken
const checkRole = authMiddleware.checkRole

router.get('/', genreController.getAllGenre);
router.post('/',  verifyJwtToken, checkRole, multer.upload.none(), genreController.postGenre);
router.put('/:id',  verifyJwtToken, checkRole, multer.upload.none(), genreController.updateGenre);
router.delete('/:id',  verifyJwtToken, checkRole, genreController.deleteGenre);

module.exports = router;
