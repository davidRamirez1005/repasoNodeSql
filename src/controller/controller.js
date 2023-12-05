const { con } = require('../config/database.js');
const { getUserQuery } = require('../model/query.js');

const user = async (req, res) => {
  con.query(getUserQuery, (err, data, fields) => {
    res.send(data);
  });
};

module.exports = {
  user
};
