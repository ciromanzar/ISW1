!classDefinition: #Falso category: #'Sexta actividad'!
DenotativeObject subclass: #Falso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sexta actividad'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Falso class' category: #'Sexta actividad'!
Falso class
	instanceVariableNames: ''!

!Falso class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:12:57'!
not
	^Verdadero! !

!Falso class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:24:34'!
o: unBooleano
	^unBooleano! !

!Falso class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:47:01'!
siFalso: unClosure
	unClosure value! !

!Falso class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:47:46'!
siVerdadero: unClosure
	! !

!Falso class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:20:08'!
y: unBooleano
	^Falso! !


!classDefinition: #TestsBooleanos category: #'Sexta actividad'!
DenotativeObject subclass: #TestsBooleanos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sexta actividad'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TestsBooleanos class' category: #'Sexta actividad'!
TestsBooleanos class
	instanceVariableNames: ''!

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:11:07'!
test01VerdaderoNotEqualFalso
	Assert that: Verdadero isNotEqualTo: Falso! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:13:28'!
test02NotVerdaderoEqualFalso
	Assert that: Verdadero not isEqualTo: Falso! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:14:03'!
test03notFalsoEqualVerdadero
	Assert that: Falso not isEqualTo: Verdadero! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:17:54'!
test04VerdaderoYVerdaderoEqualsVerdadero
	Assert that: (Verdadero y: Verdadero) isEqualTo: Verdadero! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:17:49'!
test05VerdaderoYFalsoEqualsFalso
	Assert that: (Verdadero y: Falso) isEqualTo: Falso! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:19:53'!
test06FalsoYFalsoEqualsFalso
	Assert that: (Falso y: Falso) isEqualTo: Falso! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:23:35'!
test07VerdaderoOFalsoEqualsVerdadero
	Assert that: (Verdadero o: Falso) isEqualTo: Verdadero! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:24:12'!
test08FalsoOFalsoEqualsFalso
	Assert that: (Falso o: Falso) isEqualTo: Falso! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:39:42'!
test09VerdaderoSiVerdaderoEvaluaClosure
	| resultado |
	resultado := #NoEvalua.
	Verdadero siVerdadero: (resultado := #Evalua).
	Assert that: resultado isEqualTo: #Evalua! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:42:03'!
test10VerdaderoSiFalsoNoEvaluaClosure
	| resultado |
	resultado := #Evalua.
	Verdadero siFalso: (resultado := #NoEvalua).
	Assert that: resultado isEqualTo: #NoEvalua! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:46:15'!
test11FalsoSiFalsoEvaluaClosure
	| resultado |
	resultado := #NoEvalua.
	Falso siFalso: (resultado := #Evalua).
	Assert that: resultado isEqualTo: #Evalua! !

!TestsBooleanos class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:47:29'!
test11FalsoSiVerdaderoEvaluaClosure
	| resultado |
	resultado := #Evalua.
	Falso siVerdadero: (resultado := #NoEvalua).
	Assert that: resultado isEqualTo: #NoEvalua! !


!classDefinition: #Verdadero category: #'Sexta actividad'!
DenotativeObject subclass: #Verdadero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sexta actividad'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Verdadero class' category: #'Sexta actividad'!
Verdadero class
	instanceVariableNames: ''!

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:12:42'!
not
	^Falso! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:23:05'!
o: unBooleano
	^self! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:41:05'!
siFalso: unClosure! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:39:28'!
siVerdadero: unClosure
	unClosure value! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'CZ 3/26/2018 20:18:40'!
y: unBooleano
	^unBooleano! !
