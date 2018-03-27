!classDefinition: #Amalia category: #'Tercera Actividad'!
DenotativeObject subclass: #Amalia
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tercera Actividad'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Amalia class' category: #'Tercera Actividad'!
Amalia class
	instanceVariableNames: 'energia'!

!Amalia class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 20:55:00'!
comer: cantidadDeComida
	^energia := energia + cantidadDeComida! !

Amalia instVarNamed: 'energia' put: nil!