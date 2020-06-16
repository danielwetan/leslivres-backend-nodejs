// Helper code for app
module.exports = {
  response: (res, status, data, statusCode) => {
    const result = {};

    result.data = data || '';
    result.statusCode = statusCode || 200;
    result.status = status === 'success' ? true : false;

    return res.status(result.statusCode).json({
      status: result.status,
      body: result.data
    });
  }
}
