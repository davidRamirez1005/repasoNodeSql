const express = require('express');
const {startProductionServer} = require('../config/server.js');
const {routesRepository} = require('../routes/routes.js'); 

const appExpress = express();
appExpress.use(express.json());

startProductionServer(appExpress)
routesRepository(appExpress)
