const helper = require('../helpers/response');
const userModel = require('../models/user');

module.exports = {
  getUserData: async (req, res) => {
    try {
      const id = req.params.id
      const result = await userModel.getUserData(id);
      return helper.response(res, 'success', result, 200);
    } catch(err) {
      console.log(err)
      return helper.response(res, 'failed', 'Something error', 500)
    }
  }
}