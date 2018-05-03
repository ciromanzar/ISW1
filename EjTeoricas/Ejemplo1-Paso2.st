!classDefinition: #Ejemplo1_Ejemplos category: #'Ejemplo1-Paso2'!
DenotativeObject subclass: #Ejemplo1_Ejemplos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejemplo1-Paso2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Ejemplo1_Ejemplos class' category: #'Ejemplo1-Paso2'!
Ejemplo1_Ejemplos class
	instanceVariableNames: ''!

!Ejemplo1_Ejemplos class methodsFor: '1 - ejemplos de mensajes' stamp: 'HAW 8/24/2017 10:56:56'!
ejemplo01_mensaje

	"evaluar con cmd+e para abrir un inspector sobre el mensaje.
	En el inspector evaluar en el panel inferior, presinando cmd+i o cmd+p la siguiente colaboracion:
	self sendTo: UnaCuentaBancaria
	 - Hernan"
	^#saldo asMessage! !

!Ejemplo1_Ejemplos class methodsFor: '1 - ejemplos de mensajes' stamp: 'HAW 8/24/2017 11:14:49'!
ejemplo02_mensaje

	"En este caso se puede ver como enviar un mensaje a un objeto a partir del mensaje - Hernan"
	
	^#saldo asMessage sendTo: UnaCuentaBancaria.
	
	"Cabe aclarar que la colaboracion de arriba es equivalente a:
	UnaCuentaBancaria saldo
	Pero el objetivo de este ejemplo es mostrar como a partir de tener el mensaje el mismo puede ser enviado
	"! !

!Ejemplo1_Ejemplos class methodsFor: '1 - ejemplos de mensajes' stamp: 'HAW 8/24/2017 10:52:40'!
ejemplo03_mensaje

	"Mismo caso que el ejemplo anterior pero de una manera mas sencilla - Hernan"
	^#saldo sendTo: UnaCuentaBancaria ! !

!Ejemplo1_Ejemplos class methodsFor: '1 - ejemplos de mensajes' stamp: 'HAW 8/24/2017 10:53:50'!
ejemplo04_mensaje

	"En este caso se puede ver como mandar un mensaje con colaboradores
	Este ejemplo require tener Aconcagua cargado y peso definido como objeto global - Hernan"
	^#depositar: sendTo: UnaCuentaBancaria with: 10*peso! !

!Ejemplo1_Ejemplos class methodsFor: '1 - ejemplos de mensajes' stamp: 'HAW 8/24/2017 10:54:18'!
ejemplo05_mensaje

	"En este caso se puede ver como mandar un mensaje con colaboradores
	Este ejemplo require tener Aconcagua cargado y peso definido como objeto global - Hernan"
	^#extraer: sendTo: UnaCuentaBancaria with: 5*peso! !


!Ejemplo1_Ejemplos class methodsFor: '2 - ejemplos de metodos' stamp: 'HAW 8/24/2017 11:17:38'!
ejemplo01_metodo

	"Con este ejemplo se puede ver como obtener un metodo a partir de su nombre y el objeto que lo implementa
	Evaluar este ejemplo enviado cmd+e para inspeccionar el resultado.
	Como podran ver, no es lo mismo un mensaje que un metodo - Hernan"
	^UnaCuentaBancaria methodNamed: #saldo! !

!Ejemplo1_Ejemplos class methodsFor: '2 - ejemplos de metodos' stamp: 'HAW 8/24/2017 11:20:23'!
ejemplo02_metodo

	"Este ejemplo es para mostra la diferencia entre un método y el codigo fuente (string) que se uso
	para definirlo - Hernan"
	^(UnaCuentaBancaria methodNamed: #saldo) sourceCode! !

!Ejemplo1_Ejemplos class methodsFor: '2 - ejemplos de metodos' stamp: 'HAW 8/24/2017 11:27:13'!
ejemplo03_metodo

	"Otro ejemplo más donde se puede ver la diferencia entre método, mensaje y string - Hernan"
	^(UnaCuentaBancaria methodNamed: #saldo) linesOfCode! !

!Ejemplo1_Ejemplos class methodsFor: '2 - ejemplos de metodos' stamp: 'HAW 8/24/2017 11:28:27'!
ejemplo04_metodo

	"Esta es la manera de saber quien definio esta version de metodo y cuando - Hernan"
	^(UnaCuentaBancaria methodNamed: #saldo) timeStamp ! !

!Ejemplo1_Ejemplos class methodsFor: '2 - ejemplos de metodos' stamp: 'HAW 8/24/2017 11:29:39'!
ejemplo05_metodo

	"Aca se puede ver como a partir de tener un metodo, se lo puede evaluar.
	Se puede ver nuevamente la diferencia entre enviar un mensaje y ejecutar (evaluar) un metodo - Hernan"
	^(UnaCuentaBancaria methodNamed: #saldo) valueWithReceiver: UnaCuentaBancaria arguments: #()! !

!Ejemplo1_Ejemplos class methodsFor: '2 - ejemplos de metodos' stamp: 'HAW 8/24/2017 11:32:26'!
ejemplo06_metodo

	"Este ejemplo es para ver como se puede evaluar un metodo con otro objeto que no fue el que lo definio
	Por supuesto que hay restricciones para hacerlo... - Hernan"
	
	| otraCuentaBancaria metodoParaSaldo |
	
	"Creo un replicant de UnaCuentaBancaria para que se pueda ver que el metodo puede ser ejecutado
	con otro objeto que no es el que lo define - Hernan"
	otraCuentaBancaria := UnaCuentaBancaria replicate.
	metodoParaSaldo := UnaCuentaBancaria methodNamed: #saldo.
	^metodoParaSaldo valueWithReceiver: otraCuentaBancaria arguments: #()! !


!Ejemplo1_Ejemplos class methodsFor: '3 - ejemplos de colaboradores' stamp: 'HAW 8/24/2017 11:40:34'!
ejemplo01_colaborador

	"Este ejemplo es para ver que un colaborador (variable) es tambien un objeto - Hernan"
	^UnaCuentaBancaria colaboratorNamed: 'saldo'! !

!Ejemplo1_Ejemplos class methodsFor: '3 - ejemplos de colaboradores' stamp: 'HAW 8/24/2017 11:41:04'!
ejemplo02_colaborador

	"Aca se puede ver como obtener el valor de un colaborador - Hernan"
	^(UnaCuentaBancaria colaboratorNamed: 'saldo') value! !

!Ejemplo1_Ejemplos class methodsFor: '3 - ejemplos de colaboradores' stamp: 'HAW 8/24/2017 11:41:26'!
ejemplo03_colaborador

	"Aca se puede ver como modificar el valor de un colaborador - Hernan"
	^(UnaCuentaBancaria colaboratorNamed: 'saldo') value: 100*peso! !


!classDefinition: #UnaCuentaBancaria category: #'Ejemplo1-Paso2'!
DenotativeObject subclass: #UnaCuentaBancaria
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejemplo1-Paso2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'UnaCuentaBancaria class' category: #'Ejemplo1-Paso2'!
UnaCuentaBancaria class
	instanceVariableNames: 'saldo'!

!UnaCuentaBancaria class methodsFor: 'consultas' stamp: 'HAW 8/24/2017 10:22:14'!
saldo

	^saldo! !


!UnaCuentaBancaria class methodsFor: 'transacciones' stamp: 'HAW 8/24/2017 10:22:14'!
depositar: unaCantidadDeDinero

	saldo := saldo + unaCantidadDeDinero.
	
	^saldo! !

!UnaCuentaBancaria class methodsFor: 'transacciones' stamp: 'HAW 8/24/2017 10:22:14'!
extraer: unaCantidadDeDinero

	saldo := saldo - unaCantidadDeDinero.
	
	^saldo! !

UnaCuentaBancaria instVarNamed: 'saldo' put: 0!