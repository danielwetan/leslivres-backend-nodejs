// const multer = require('multer');
// const path = require('path');

// module.exports = {
//   storage: multer.diskStorage({
//     destination: function (req, file, cb) {
//       cb(null, path.join(__dirname, '../public', 'img'));
//     },
//     filename: (req, file, cb) => {
//       cb(null, file.originalname);
//     }
//   }),
//   upload: multer()
// }

const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, path.join(__dirname, '../public', 'img'));
  },
  filename: (req, file, cb) => {
    cb(null, file.originalname);
  },
  // fileFilter: (req, file, cb) => {
  //   if (file.mimetype == "image/png" || file.mimetype == "image/jpg" || file.mimetype == "image/jpeg") {
  //     cb(null, true);
  //   } else {
  //     cb(null, false);
  //     return cb(new Error('Only .png, .jpg and .jpeg format allowed!'));
  //   }
  // }
});

const upload = multer({storage: storage, limits: {fileSize: 1000000}}) // max upload file size = 1mb

module.exports = upload