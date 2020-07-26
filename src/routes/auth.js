// Auth route
const express = require('express');
const router = express.Router();
const authController = require('../controllers/auth');

// const multer = require('../helpers/multer');
const multer = require('../helpers/multer');

router.post('/register', multer.none(), authController.register);
router.post('/login', multer.none(), authController.login);

module.exports = router;