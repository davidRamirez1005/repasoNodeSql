const {user, insertUser, deleteUser} = require('../controller/controller.js')

function routesRepository(nameExpress) {
    nameExpress.use('/user',user)
    nameExpress.use('/insertUser',insertUser)
    nameExpress.use('/deleteUser/:id',deleteUser)

}

module.exports = {
    routesRepository
};