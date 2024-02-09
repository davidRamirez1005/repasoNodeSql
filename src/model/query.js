const getUserQuery = /* sql */ `
SELECT *
FROM producto
WHERE LENGTH(nombre) + LENGTH(precio) <= 20
ORDER BY id DESC;
`;
// SELECT * FROM preguntas ORDER BY id DESC
// SELECT * FROM ciudad WHERE nombre LIKE 'M%';
// SELECT * FROM ciudad

// SELECT columna_a, columna_b, id
// FROM tu_tabla
// WHERE LENGTH(columna_a) + LENGTH(columna_b) = 12
// ORDER BY id DESC;

const insertUserQuery = /* sql */ `
  INSERT INTO producto(nombre, precio, id_fabricante) VALUES (?, ?, ?)
`;

const queryDeleteuser = `DELETE FROM producto WHERE id = ?`;


module.exports = {
  getUserQuery,
  insertUserQuery,
  queryDeleteuser
};