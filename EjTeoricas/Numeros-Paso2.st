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

!Cero class methodsFor: 'suma' stamp: 'HAW 8/28/2017 11:43:38'!
+ unSumando

	| suma |
	
	suma := unSumando.
	self repetir: [ suma := suma proximo ].
	
	^suma! !


!Cero class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:23:59'!
proximo
	
	^Uno! !

!Cero class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:42:13'!
repetir: aBlock
	
	! !


!classDefinition: #Uno category: #Numeros!
Cero subclass: #Uno
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Uno class' category: #Numeros!
Uno class
	instanceVariableNames: ''!


!Uno class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:42:04'!
previo
	
	^Cero! !

!Uno class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:25:52'!
proximo
	
	^Dos! !

!Uno class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:41:52'!
repetir: aBlock

	aBlock value.
	self previo repetir: aBlock! !


!classDefinition: #Dos category: #Numeros!
Uno subclass: #Dos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Dos class' category: #Numeros!
Dos class
	instanceVariableNames: ''!


!Dos class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:42:53'!
previo 

	^Uno! !

!Dos class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:28:01'!
proximo
	
	^Tres! !


!classDefinition: #Tres category: #Numeros!
Uno subclass: #Tres
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Tres class' category: #Numeros!
Tres class
	instanceVariableNames: ''!


!Tres class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:43:08'!
previo

	^Dos! !

!Tres class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:37:04'!
proximo
	
	^Cuatro ! !


!classDefinition: #Cuatro category: #Numeros!
DenotativeObject subclass: #Cuatro
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!


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
