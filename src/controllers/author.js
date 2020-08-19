// Main logic for Author route
const helper = require('../helpers/response');
const authorModel = require('../models/author');

module.exports = {
  getAllAuthor: async (req, res) => {
    try {
      const result = await authorModel.getAuthorModel();
      return helper.response(res, 'success', result, 200);
    } catch (err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  },
  postAuthor: async (req, res) => {
    const setData = req.body;
    console.log(setData)
    try {
      if (!setData.name) {
        return helper.response(res, 'failed', 'Name cannot be empty!', 500);
      } else {
        await authorModel.postAuthorModel(setData);
        return helper.response(res, 'success', `New author added!`, 200)
      }
    } catch (err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    };
  },
  updateAuthor: async (req, res) => {
    const id = req.params.id;
    const newData = req.body;
    try {
      if (!newData.name) {
        return helper.response(res, 'failed', 'Name cannot be empty!', 500);
      } else {
        const result = await authorModel.updateAuthorModel(id, newData);
        result.affectedRows == 1 ? helper.response(res, 'success', `Data with id ${id} successfully updated`, 200)
          : helper.response(res, 'failed', `Data with id ${id} not found`, 500);
      }
    } catch (err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    };
  },
  deleteAuthor: async (req, res) => {
    const id = req.params.id;
    try {
      const result = await authorModel.deleteAuthorModel(id);
      console.log(id);
      console.log(result);
      result.affectedRows == 1 ? helper.response(res, 'success', `Data with id ${id} successfully deleted`, 200)
        : helper.response(res, 'failed', `Data with id ${id} not found`, 404)
    } catch (err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  }
}
