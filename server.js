const express = require('express');
const app = express();
const expressLayouts = require('express-ejs-layouts');

app.set('view engine', 'ejs');
app.use(expressLayouts);
app.set('layout', 'partials/base');

app.get('/', (req, res) => {
  res.render('index', {layout:'partials/indexbase'});
});

app.get('/adduser', (req, res) => {
  res.render('adduser');
});

app.listen(3001);
