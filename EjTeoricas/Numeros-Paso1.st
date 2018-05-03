!classDefinition: #Cero category: #Numeros!
DenotativeObject subclass: #Cero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cero class' category: #Numeros!
Cero class
	instanceVariableNames: ''!

!Cero class methodsFor: 'suma' stamp: 'HAW 8/28/2017 11:22:49'!
+ unSumando

	^unSumando ! !


!Cero class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:23:59'!
proximo
	
	^Uno! !


!classDefinition: #Cuatro category: #Numeros!
DenotativeObject subclass: #Cuatro
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!


!classDefinition: #Dos category: #Numeros!
DenotativeObject subclass: #Dos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Dos class' category: #Numeros!
Dos class
	instanceVariableNames: ''!

!Dos class methodsFor: 'suma' stamp: 'HAW 8/28/2017 11:25:00'!
+ unSumando

	^unSumando proximo proximo! !


!Dos class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:28:01'!
proximo
	
	^Tres! !


!classDefinition: #SumaTest category: #Numeros!
DenotativeObject subclass: #SumaTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SumaTest class' category: #Numeros!
SumaTest class
	instanceVariableNames: ''!

!SumaTest class methodsFor: 'as yet unclassified' stamp: 'HAW 8/28/2017 11:22:31'!
test01CeroMasCualquierSumandoEsElSumando

	Assert that: Cero + Uno isEqualTo: Uno! !

!SumaTest class methodsFor: 'as yet unclassified' stamp: 'HAW 8/28/2017 11:23:24'!
test02UnoMasUnSumandoEsElProximoDelSumando

	Assert that: Uno + Cero isEqualTo: Uno! !

!SumaTest class methodsFor: 'as yet unclassified' stamp: 'HAW 8/28/2017 11:24:39'!
test03DosMasUnSumandoEsElProximoDelProximoDelSumando

	Assert that: Dos + Cero isEqualTo: Dos! !

!SumaTest class methodsFor: 'as yet unclassified' stamp: 'HAW 8/28/2017 11:36:52'!
test04TresMasUnSumandoEsElProximoDelProximoDelProximoDelSumando

	Assert that: Tres + Uno isEqualTo: Cuatro! !


!classDefinition: #Tres category: #Numeros!
DenotativeObject subclass: #Tres
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Tres class' category: #Numeros!
Tres class
	instanceVariableNames: ''!

!Tres class methodsFor: 'suma' stamp: 'HAW 8/28/2017 11:27:48'!
+ unSumando

	^unSumando proximo proximo proximo! !


!Tres class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:37:04'!
proximo
	
	^Cuatro ! !


!classDefinition: #Uno category: #Numeros!
DenotativeObject subclass: #Uno
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Uno class' category: #Numeros!
Uno class
	instanceVariableNames: ''!

!Uno class methodsFor: 'suma' stamp: 'HAW 8/28/2017 11:23:39'!
+ unSumando

	^unSumando proximo! !


!Uno class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:25:52'!
proximo
	
	^Dos! !
