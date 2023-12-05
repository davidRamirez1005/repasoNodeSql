const {user} = require('../controller/controller.js')

function routesRepository(nameExpress) {
    nameExpress.use('/user',user)
}

module.exports = {
    routesRepository
};