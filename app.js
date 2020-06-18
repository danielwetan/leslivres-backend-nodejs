// App entry point
const express = require('express');
require('dotenv').config();
const connection = require('./src/helpers/mysql');
const bodyParser = require('body-parser');
const routes = require('./src/routes/index');
const morgan = require('morgan');
const app = express();
const cors = require('cors');

connection.connect((err) => {
  if(err) throw err;
  console.log('Database has connected')
})

app.use(cors());
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
app.use(morgan('dev'));
app.use('/', routes);

const PORT = process.env.PORT || 3000;
const server = app.listen(PORT, () => {console.log(`App running on port ${PORT}`)});
