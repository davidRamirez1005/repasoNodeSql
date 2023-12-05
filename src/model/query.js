const getUserQuery = /* sql */ `
SELECT * FROM preguntas ORDER BY id DESC
`;
// SELECT * FROM preguntas ORDER BY id DESC
// SELECT * FROM ciudad WHERE nombre LIKE 'M%';
// SELECT * FROM ciudad


module.exports = {
  getUserQuery
};