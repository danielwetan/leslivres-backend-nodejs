const express = require('express')
const router = express.Router()
const userController = require('../controllers/user')
const redis = require('../middleware/redis');

router.get('/:id', redis.getCached('user'), userController.getUserData);

module.exports = router;