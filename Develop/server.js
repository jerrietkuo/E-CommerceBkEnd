// const express = require('express');
// const routes = require('./routes');
// // import sequelize connection
// const sequelize = require('./config/connection');

// const app = express();
// const PORT = process.env.PORT || 3002; // changed port from 3001 to 3002

// app.use(express.json());
// app.use(express.urlencoded({ extended: true }));

// app.use(routes);

// // sync sequelize models to the database, then turn on the server
// app.listen(PORT, () => {
//   console.log(`App listening on port ${PORT}!`);
// });

const express = require('express');
const routes = require('./routes/api');
const sequelize = require('./config/connection');

const app = express();
const PORT = process.env.PORT || 3002;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use('/api', routes); // Make sure to prefix with /api

sequelize.sync({ force: false }).then(() => {
  app.listen(PORT, () => console.log(`App listening on port ${PORT}!`));
});