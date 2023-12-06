const { con } = require('../config/database.js');
const { getUserQuery, insertUserQuery } = require('../model/query.js');

//GET
const user = async (req, res) => {
  con.query(getUserQuery, (err, data, fields) => {
    res.send(data);
  });
};
//POST
const insertUser = async (req, res) => {
  const { nombre, id_p } = req.body;
  con.query(insertUserQuery, [nombre, id_p], (err, result) => {
    if (err) throw err;
    res.send('Usuario insertado exitosamente');
  });
};
//PUT
const updateUserName = async (req, res) => {
  const { id, nuevoNombre } = req.body;

  // Verificar si se proporcionaron el ID y el nuevo nombre
  if (!id || !nuevoNombre) {
    return res.status(400).send('ID y nuevo nombre son obligatorios');
  }

  con.query('UPDATE usuarios SET nombre = ? WHERE id = ?', [nuevoNombre, id], (err, result) => {
    if (err) throw err;

    if (result.affectedRows > 0) {
      res.send('Usuario actualizado exitosamente');
    } else {
      res.status(404).send('Usuario no encontrado');
    }
  });
};
//DELETE
const deleteUser = async (req, res) => {
  const userId = req.params.id;

  // Verificar si se proporcionó el ID
  if (!userId) {
    return res.status(400).send('ID es obligatorio');
  }

  con.query('DELETE FROM usuarios WHERE id = ?', [userId], (err, result) => {
    if (err) throw err;

    if (result.affectedRows > 0) {
      res.send('Usuario eliminado exitosamente');
    } else {
      res.status(404).send('Usuario no encontrado');
    }
  });
};


module.exports = {
  user, insertUser
};
