# language: es

Requisito: Transferir dinero a número de celular
	Como cliente del banco
	Quiero transferir dinero indicando el número de celular del receptor
	Para facilitar el proceso sin memorizar números y tener confianza de quién recibió el dinero

    Criterios de aceptación
	    El número receptor debe ser un celular válido en Uruguay
	    Se debe aceptar números válidos con o sin característica de país, con ceros a la izquierda o espacios
	    El número receptor debe estar registrado en la base de transferencias interbancarias

Escenario: Número celular no válido
    Dado número receptor '088123123' 
    Cuando pido transferir
    Entonces se informa 'número no es celular válido' 
	    Y se cancela transferencia

Escenario: Número no registrado para transferencias interbancarias
    Dado número receptor '091 123 123'
	    Y '091 123 123' no está en registro de transferencias interbancarias
    Cuando pido transferir
    Entonces se informa 'número no registrado para transferencias interbancarias'
	    Y se cancela transferencia

