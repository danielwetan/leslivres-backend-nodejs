const express = require('express');
const router = express.Router();
const transactionController = require('../controllers/transaction');
const multer = require('../helpers/multer');
const authMiddleware = require('../middleware/auth');
const verifyJwtToken = authMiddleware.verifyJwtToken

router.get('/', transactionController.getTransaction);
router.get('/:id', transactionController.getSingleTransaction);
router.post('/', verifyJwtToken, multer.none(), transactionController.createTransaction);
router.put('/:id', verifyJwtToken, multer.none(), transactionController.updateTransaction);
router.delete('/:id', verifyJwtToken, transactionController.deleteTransaction);

module.exports = router;