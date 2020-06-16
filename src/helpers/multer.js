const multer = require('multer');
const path = require('path');

module.exports = {
  storage: multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.join(__dirname, '../public', 'img'));
    },
    filename: (req, file, cb) => {
      const splitName = file.originalname.split('.');
      const ext = splitName.pop();
      const newName = splitName.join('-');
      cb(null, `${newName}.${ext}`);
    }
  }),
  upload: multer()
}
