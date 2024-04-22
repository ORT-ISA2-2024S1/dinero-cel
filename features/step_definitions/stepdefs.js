const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function transferir(numeroCelular) {
    // TODO implementacion temporal
    return 'cancelada';
}

function estaEnRegistroTIB(numeroCelular) {
    // TODO implementacion temporal
    return false;
}

Given('número receptor {string}', function (numeroCelular) {
    this.numeroReceptor = numeroCelular;
});

Given('{string} no está en registro de transferencias interbancarias', function (numeroCelular) {
    return estaEnRegistroTIB(numeroCelular);
});

When('pido transferir', function () {
    return this.mensaje = transferir(this.numeroReceptor);
});

Then('se informa {string}', function (mensajeEsperado) {
    assert.strictEqual(this.mensaje, mensajeEsperado);
});

Then('se cancela transferencia', function () {
    // TODO
    return 'pending';
});

