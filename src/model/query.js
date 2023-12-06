const getUserQuery = /* sql */ `
SELECT * FROM preguntas ORDER BY id DESC
`;
// SELECT * FROM preguntas ORDER BY id DESC
// SELECT * FROM ciudad WHERE nombre LIKE 'M%';
// SELECT * FROM ciudad

// SELECT columna_a, columna_b, id
// FROM tu_tabla
// WHERE LENGTH(columna_a) + LENGTH(columna_b) = 12
// ORDER BY id DESC;

const insertUserQuery = /* sql */ `
  INSERT INTO ciudad (nombre, id_p) VALUES (?, ?)
`;

module.exports = {
  getUserQuery,
  insertUserQuery
};