const dotenv = require('dotenv/config')


function startProductionServer(nameExpress) {
    const servidor = ({
        port: process.env.PORT || 3000,
        addresses: process.env.IP,
    });

    nameExpress.listen(servidor.port, () =>{
        console.log(`listening on http://${servidor.addresses}:${servidor.port}`);
    });
}

module.exports = {
    startProductionServer
};