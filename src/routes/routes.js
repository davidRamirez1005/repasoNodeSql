const {user, insertUser, deleteUser} = require('../controller/controller.js')

function routesRepository(nameExpress) {
    nameExpress.use('/user',user)
    nameExpress.use('/insertUser',insertUser)
    nameExpress.use('/:id',deleteUser)

}

module.exports = {
    routesRepository
};