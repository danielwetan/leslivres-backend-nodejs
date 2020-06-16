// Genre route
const express = require('express');
const router = express.Router();
const genreController = require('../controllers/genre');
const multer = require('../helpers/multer')

router.get('/', genreController.getAllGenre);
router.post('/', multer.upload.none(), genreController.postGenre);
router.put('/:id', multer.upload.none(), genreController.updateGenre);
router.delete('/:id', genreController.deleteGenre);

module.exports = router;
