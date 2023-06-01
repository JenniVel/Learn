const express = require('express');
const mysql = require('mysql');

const app = express();

app.use(express.urlencoded({ extended: true }));
app.set("view engine", "ejs");
app.set("views", "views");

const db = mysql.createConnection({
  host: 'localhost',
  database: 'dbmahasiswa',
  user: 'root',
  password: '',
});

db.connect((err) => {
  if (err) throw err;
  console.log('database connected');

  // Untuk mendapatkan data
  app.get('/', (req, res) => {
    const sql = 'SELECT * FROM biodata';
    db.query(sql, (err, result) => {
      const users = JSON.parse(JSON.stringify(result));
      res.render('index', { users: users, title: 'DAFTAR MURID' });
    });
  });

  // Untuk menyimpan data
  app.post('/tambah', (req, res) => {
    const insertSQL = `INSERT INTO biodata (nama, kelas) VALUES ('${req.body.nama}', '${req.body.kelas}');`;
    db.query(insertSQL, (err, result) => {
      if (err) throw err;
      res.redirect('/');
    });
  });
});

app.listen(8000, () => {
  console.info('server ready');
});
