!classDefinition: #UnObjeto category: #'Ejemplo1-Paso1'!
DenotativeObject subclass: #UnObjeto
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejemplo1-Paso1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'UnObjeto class' category: #'Ejemplo1-Paso1'!
UnObjeto class
	instanceVariableNames: 'saldo'!

!UnObjeto class methodsFor: 'as yet unclassified' stamp: 'HAW 8/24/2017 10:21:06'!
depositar: unaCantidadDeDinero

	saldo := saldo + unaCantidadDeDinero.
	
	^saldo! !

!UnObjeto class methodsFor: 'as yet unclassified' stamp: 'HAW 8/24/2017 10:21:15'!
extraer: unaCantidadDeDinero

	saldo := saldo - unaCantidadDeDinero.
	
	^saldo! !

!UnObjeto class methodsFor: 'as yet unclassified' stamp: 'HAW 8/24/2017 10:21:27'!
saldo

	^saldo! !

UnObjeto instVarNamed: 'saldo' put: 0!