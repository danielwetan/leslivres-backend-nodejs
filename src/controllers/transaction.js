const helper = require('../helpers/response');
const transactionModel = require('../models/transaction');

module.exports = {
  getTransaction: async (req, res) => {
    try {
      const result = await transactionModel.getTransaction();
      return helper.response(res, 'success', result, 200);      
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  },
  getSingleTransaction: async (req, res) => {
    const id = req.params.id
    try {
      const result = await transactionModel.singleTransaction(id);
      return helper.response(res, 'success', result, 200);
    } catch(err) {
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  },
  createTransaction: async (req, res) => {
    const setData = req.body;
    try {
      const result = await transactionModel.createTransaction(setData);
      return helper.response(res, 'success', result, 200);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', err, 500);
    }
  },
  updateTransaction: async (req, res) => {
    const id = req.params.id;
    const newData = req.body;
    try {
      const result = await transactionModel.updateTransaction(id, newData);
      return helper.response(res, 'successs', result, 200);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  },
  deleteTransaction: async (req, res) => {
    const id = req.params.id;
    try {
      const result = await transactionModel.deleteTransaction(id);
      return helper.response(res, 'successs', result, 200);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  }
}