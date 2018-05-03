!classDefinition: #BooleanTest category: #'AlgebraDeBoole-Clases'!
TestCase subclass: #BooleanTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AlgebraDeBoole-Clases'!

!BooleanTest methodsFor: 'tests' stamp: 'HAW 9/5/2017 08:59:22'!
test01VerdederoNotEsFalso

	self assert: verdadero not equals: falso
	
! !

!BooleanTest methodsFor: 'tests' stamp: 'HAW 9/5/2017 08:59:28'!
test02FalsoNotEsVerdadero

	self assert: falso not equals: verdadero
	
! !

!BooleanTest methodsFor: 'tests' stamp: 'HAW 9/5/2017 08:59:36'!
test03VerdaderoAndUnValorDeVerdadEsElValorDeVerdad

	self assert: (verdadero and: verdadero) equals: verdadero.
	self assert: (verdadero and: falso) equals: falso! !

!BooleanTest methodsFor: 'tests' stamp: 'HAW 9/5/2017 08:59:43'!
test04FalsoAndUnValorDeVerdadEsFalso

	self assert: (falso and: verdadero) equals: falso.
	self assert: (falso and: falso) equals: falso! !

!BooleanTest methodsFor: 'tests' stamp: 'HAW 9/5/2017 08:59:50'!
test05VerdaderoOrUnValorDeVerdadEsVerdadero

	self assert: (verdadero or: verdadero) equals: verdadero.
	self assert: (verdadero or: falso) equals: verdadero! !

!BooleanTest methodsFor: 'tests' stamp: 'HAW 9/5/2017 08:59:57'!
test06FalsoOrUnValorDeVerdadEsUnValorDeVerdad

	self assert: (falso or: verdadero) equals: verdadero.
	self assert: (falso or: falso) equals: falso! !

!BooleanTest methodsFor: 'tests' stamp: 'HAW 9/5/2017 08:58:38'!
test07VerdaderoSiEsVerdaderoEvaluaElBloque

	self assert: (verdadero siEsVerdadero: [ 1 ]) equals: 1! !

!BooleanTest methodsFor: 'tests' stamp: 'HAW 9/5/2017 08:59:13'!
test08FalsoSiEsVerdaderoNoEvaluaElBloque

	self assert: (falso siEsVerdadero: [ 1 ]) isNil! !


!classDefinition: #ValorDeVerdad category: #'AlgebraDeBoole-Clases'!
Object subclass: #ValorDeVerdad
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AlgebraDeBoole-Clases'!

!ValorDeVerdad methodsFor: 'as yet unclassified' stamp: 'HAW 9/4/2017 19:38:01'!
and: unValorDeVerdad

	self subclassResponsibility ! !

!ValorDeVerdad methodsFor: 'as yet unclassified' stamp: 'HAW 9/5/2017 08:48:14'!
not

	"Con un lenguaje con if como palabra reservada seria asi:
	if(self = verdadero) ^falso.
	^verdadero
	
	Si el if estuviese implementado con polimorfismo podria quedar asi:
	self siEsVerdadero: [ ^falso ].
	^verdadero
	
	Pero para que implementarlo con if si se puede usar polimorfismo?"
	
	self subclassResponsibility ! !

!ValorDeVerdad methodsFor: 'as yet unclassified' stamp: 'HAW 9/4/2017 19:38:03'!
or: unValorDeVerdad

	self subclassResponsibility ! !

!ValorDeVerdad methodsFor: 'as yet unclassified' stamp: 'HAW 9/4/2017 19:51:56'!
siEsVerdadero: unBloque
	
	self subclassResponsibility ! !


!classDefinition: #Falsedad category: #'AlgebraDeBoole-Clases'!
ValorDeVerdad subclass: #Falsedad
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AlgebraDeBoole-Clases'!

!Falsedad methodsFor: 'as yet unclassified' stamp: 'HAW 9/5/2017 08:48:32'!
and: unValorDeVerdad

	^self ! !

!Falsedad methodsFor: 'as yet unclassified' stamp: 'HAW 9/4/2017 19:34:51'!
not
	
	^verdadero ! !

!Falsedad methodsFor: 'as yet unclassified' stamp: 'HAW 9/5/2017 08:48:43'!
or: unValorDeVerdad

	^unValorDeVerdad ! !

!Falsedad methodsFor: 'as yet unclassified' stamp: 'HAW 9/4/2017 19:52:20'!
siEsVerdadero: unBloque

	^nil! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Falsedad class' category: #'AlgebraDeBoole-Clases'!
Falsedad class
	instanceVariableNames: ''!

!Falsedad class methodsFor: 'as yet unclassified' stamp: 'HAW 9/5/2017 08:49:38'!
initialize

	Smalltalk at: #falso put: self new! !


!classDefinition: #Verdad category: #'AlgebraDeBoole-Clases'!
ValorDeVerdad subclass: #Verdad
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AlgebraDeBoole-Clases'!

!Verdad methodsFor: 'as yet unclassified' stamp: 'HAW 9/5/2017 08:48:52'!
and: unValorDeVerdad

	^unValorDeVerdad ! !

!Verdad methodsFor: 'as yet unclassified' stamp: 'HAW 9/4/2017 19:26:56'!
not
	
	^falso! !

!Verdad methodsFor: 'as yet unclassified' stamp: 'HAW 9/5/2017 08:48:58'!
or: unValorDeVerdad

	^self ! !

!Verdad methodsFor: 'as yet unclassified' stamp: 'HAW 9/4/2017 19:52:11'!
siEsVerdadero: unBloque

	^unBloque value! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Verdad class' category: #'AlgebraDeBoole-Clases'!
Verdad class
	instanceVariableNames: ''!

!Verdad class methodsFor: 'as yet unclassified' stamp: 'HAW 9/5/2017 08:49:19'!
initialize

	Smalltalk at: #verdadero put: self new! !

Falsedad initialize!
Verdad initialize!