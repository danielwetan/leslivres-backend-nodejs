// Main route
const express = require('express');
const router = express.Router();
const authorRouter = require('./author');
const genreRouter = require('./genre');
const bookRouter = require('./book');
const authRouter = require('./auth');
const transactionRouter = require('./transaction');
const userRouter = require('./user');

router.use('/author', authorRouter);
router.use('/genre', genreRouter);
router.use('/book', bookRouter);
router.use('/auth', authRouter);
router.use('/transaction', transactionRouter);
router.use('/user', userRouter)
router.use('*', (req, res) => { res.json({ msg: "Page not found - 404" }) })

module.exports = router;

