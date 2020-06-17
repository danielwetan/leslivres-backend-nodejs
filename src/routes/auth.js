const express = require('express');
const router = express.Router();
const authController = require('../controllers/auth');
// const authMiddleware = require('../middleware/auth');

router.post('/register', authController.register);
router.post('/login', authController.login);
// router.post('/refresh-token', authController.refreshToken);
// router.get('/refresh-token', authMiddleware.verifyRefreshToken, authMiddleware.checkRole, authController)

module.exports = router;