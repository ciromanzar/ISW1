!classDefinition: #Falso category: #'AlgebraDeBoole-Prototipos'!
DenotativeObject subclass: #Falso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AlgebraDeBoole-Prototipos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Falso class' category: #'AlgebraDeBoole-Prototipos'!
Falso class
	instanceVariableNames: ''!

!Falso class methodsFor: 'control de flujo' stamp: 'HAW 9/5/2017 08:55:25'!
siEsVerdadero: unBloque

	^nil! !


!Falso class methodsFor: 'operaciones booleanas' stamp: 'HAW 9/5/2017 08:50:30'!
and: unValorDeVerdad

	^self! !

!Falso class methodsFor: 'operaciones booleanas' stamp: 'HAW 9/4/2017 19:15:51'!
not

	^Verdadero ! !

!Falso class methodsFor: 'operaciones booleanas' stamp: 'HAW 9/5/2017 08:50:37'!
or: unValorDeVerdad

	^unValorDeVerdad ! !


!classDefinition: #Verdadero category: #'AlgebraDeBoole-Prototipos'!
DenotativeObject subclass: #Verdadero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AlgebraDeBoole-Prototipos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Verdadero class' category: #'AlgebraDeBoole-Prototipos'!
Verdadero class
	instanceVariableNames: ''!

!Verdadero class methodsFor: 'control de flujo' stamp: 'HAW 9/5/2017 08:55:02'!
siEsVerdadero: unBloque

	^unBloque value! !


!Verdadero class methodsFor: 'operaciones booleanas' stamp: 'HAW 9/5/2017 08:50:43'!
and: unValorDeVerdad

	^unValorDeVerdad ! !

!Verdadero class methodsFor: 'operaciones booleanas' stamp: 'HAW 9/4/2017 19:15:04'!
not

	^Falso! !

!Verdadero class methodsFor: 'operaciones booleanas' stamp: 'HAW 9/5/2017 08:50:48'!
or: unValorDeVerdad

	^self! !
