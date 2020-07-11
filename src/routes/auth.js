// Auth route
const express = require('express');
const router = express.Router();
const multer = require('../helpers/multer');
const authController = require('../controllers/auth');
const authMiddleware = require('../middleware/auth');
const verifyJwtToken = authMiddleware.verifyJwtToken
const checkRole = authMiddleware.checkRole

router.post('/register', multer.upload.none(), authController.register);
router.post('/login', multer.upload.none(), authController.login);

module.exports = router;