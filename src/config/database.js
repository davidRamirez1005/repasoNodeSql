const mysql = require('mysql2')
const dotenv = require('dotenv/config')

const config = JSON.parse(process.env.MY_CONFIG)

const con = mysql.createPool({
    host: config.host,
    user: config.user,
    password: config.password,
    database: config.database,
    port: config.port
})
// Intentar obtener una conexión del pool para validarla
con.getConnection((err, connection) => {
    if (err) {
    console.error('Failed connection:');
} else {
    connection.release();
}
});


module.exports = {
    con
};
