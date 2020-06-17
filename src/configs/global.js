// Global configuration
const config = {
  mysql: {
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE,
  },
  jwt: {
    secretKey: process.env.JWT_SECRET,
    mainToken: process.env.JWT_MAIN_TOKEN,
    refreshToken: process.env.JWT_REFRESH_TOKEN,
    mainTokenLife: process.env.JWT_MAIN_TOKEN_LIFE,
    refreshTokenLife: process.env.JWT_REFRESH_TOKEN_LIFE
  }
}

module.exports = config;
