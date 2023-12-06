const {user, insertUser} = require('../controller/controller.js')

function routesRepository(nameExpress) {
    nameExpress.use('/user',user)
    nameExpress.use('/insertUser',insertUser)
}

module.exports = {
    routesRepository
};