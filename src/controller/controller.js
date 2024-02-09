const { con } = require('../config/database.js');
const { getUserQuery, insertUserQuery, queryDeleteUser } = require('../model/query.js');

//GET
const user = async(req, res)=>{
  con.query(getUserQuery, (err, data, field) => {
    res.send(data)
  })
}
//POST
const insertUser = async(req,res) =>{
  const {nombre, precio, id_fabricante} = req.body
  con.query(insertUserQuery, [nombre, precio, id_fabricante], (err, result) =>{
    if (err) throw err
    res.send('bien')
  } )
}

//PUT
const updateUserName = async (req, res) => {
  const { id, nuevoNombre } = req.body;

  if (!id || !nuevoNombre) {
    return res.status(400).send('ID y nuevo nombre son obligatorios');
  }

  con.query('UPDATE producto SET nombre = ? WHERE id = ?', [nuevoNombre, id], (err, result) => {
    if (err) throw err;

    if (result.affectedRows > 0) {
      res.send('Usuario actualizado exitosamente');
    } else {
      res.status(404).send('Usuario no encontrado');
    }
  });
};


//DELETE
const deleteUser = (req, res) => {
  const id = req.params.id;

  con.query(queryDeleteUser, [id], (err, result) => {
    if (err) {
      console.error('Error al eliminar producto:', err);
      return res.status(500).send('Error interno del servidor');
    }

    if (result.affectedRows > 0) {
      res.send('Producto eliminado exitosamente');
    } else {
      res.status(404).send('Producto no encontrado');
    }
  });
};


module.exports = {
  user, insertUser, updateUserName, deleteUser
};
