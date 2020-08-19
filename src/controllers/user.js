const helper = require('../helpers/response');
const userModel = require('../models/user');
const redis = require('../middleware/redis');

module.exports = {
  getUserData: async (req, res) => {
    try {
      const id = req.params.id
      const result = await userModel.getUserData(id);
      const entries = Object.entries(result[0]);
      const obj = Object.fromEntries(entries);
      console.log("Hello from main controller")
      const name = 'user:';
      redis.caching(name, id, obj)
      return helper.response(res, 'success', result, 200);
    } catch (err) {
      console.log(err)
      return helper.response(res, 'failed', 'Something error', 500)
    }
  }
}