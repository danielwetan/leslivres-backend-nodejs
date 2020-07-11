const express = require('express');
const router = express.Router();
const transactionController = require('../controllers/transaction');
const multer = require('../helpers/multer');

router.get('/', transactionController.getTransaction);
router.post('/', multer.none(), transactionController.createTransaction);
router.put('/:id', multer.none(), transactionController.updateTransaction);
router.delete('/:id', transactionController.deleteTransaction);

module.exports = router;