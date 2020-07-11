// Main logic for genre route
const helper = require('../helpers/response');
const genreModel = require('../models/genre');

module.exports = {
  getAllGenre: async (req, res) => {
    try {
      const result = await genreModel.getGenreModel();
      return helper.response(res, 'success', result, 200);
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  },
  postGenre: async (req, res) => {
    const setData = req.body;
    try {
      if(!setData.name) {
        return helper.response(res, 'failed', 'Name cannot be empty!', 500);
      } else {
        await genreModel.postGenreModel(setData);
        return helper.response(res, 'success', `New genre added!`, 200)
      }
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    };
  },
  updateGenre: async (req, res) => {
    const id = req.params.id;
    const newData = req.body;
    try {
     if(!newData.name) {
      return helper.response(res, 'failed', 'Name cannot be empty!', 500);
    } else {
      const result = await genreModel.updateGenreModel(id, newData);
      result.affectedRows == 1 ? helper.response(res, 'success', `Data with id ${id} successfully updated`, 200)
      : helper.response(res, 'failed', `Data with id ${id} not found`, 500);
    }
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    };
  },
  deleteGenre: async (req, res) => {
    const id = req.params.id;
    try {
      const result = await genreModel.deleteGenreModel(id);
      console.log(id);
      console.log(result);
      result.affectedRows == 1 ? helper.response(res, 'success', `Data with id ${id} successfully deleted`, 200)
      : helper.response(res, 'failed', `Data with id ${id} not found`, 404)
    } catch(err) {
      console.log(err);
      return helper.response(res, 'failed', 'Something Error', 500);
    }
  }
}
