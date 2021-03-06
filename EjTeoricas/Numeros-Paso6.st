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

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:30:39'!
* unMultiplicador

	| multiplicacion |
	
	multiplicacion := Cero.
	unMultiplicador repetir: [ multiplicacion := multiplicacion + self ].
	
	^multiplicacion ! !

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 11:43:38'!
+ unSumando

	| suma |
	
	suma := unSumando.
	self repetir: [ suma := suma proximo ].
	
	^suma! !

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:19:56'!
- unRestando

	| resta |
	
	resta := self.
	unRestando repetir: [ resta := resta previo ].
	
	^resta! !

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 17:23:20'!
/ unDivisor

	^unDivisor dividirA: self! !

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:25:19'!
factorial
	
	self error: self descripcionDeErrorDeFactorialNoSoportado ! !


!Cero class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 17:23:45'!
dividirA: unDividendo

	self error: self descripcionDeErrorDeNoSePuedeDividirPorCero
	! !


!Cero class methodsFor: 'peano' stamp: 'HAW 8/28/2017 12:22:23'!
previo
	
	^self error: self descripcionDeErrorDeNumerosNegativosNoSoportados ! !

!Cero class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:23:59'!
proximo
	
	^Uno! !

!Cero class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:42:13'!
repetir: aBlock
	
	! !


!Cero class methodsFor: 'errores' stamp: 'HAW 8/28/2017 12:25:01'!
descripcionDeErrorDeFactorialNoSoportado
	
	^'factorial es v�lido para n�mero mayores a cero'! !

!Cero class methodsFor: 'errores' stamp: 'HAW 4/6/2018 12:49:53'!
descripcionDeErrorDeNoSePuedeDividirPorCero
	
	^'No se puede dividir por cero'! !

!Cero class methodsFor: 'errores' stamp: 'HAW 8/28/2017 12:21:55'!
descripcionDeErrorDeNumerosNegativosNoSoportados
	
	^'N�mero negativos no soportados'! !


!Cero class methodsFor: 'comparacion' stamp: 'HAW 4/6/2018 17:16:22'!
>= unNumero

	^ self = unNumero! !


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

!Uno class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:26:05'!
factorial

	^self! !


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


!Uno class methodsFor: 'comparacion' stamp: 'HAW 4/6/2018 17:17:54'!
>= unNumero

	^unNumero = Cero or: [ self previo >= unNumero previo ].
	! !


!Uno class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 17:25:54'!
dividirA: unDividendo

	| resultado resto |
	
	resultado := Cero.
	resto := unDividendo.
	[ resto >= self ] whileTrue: [ 
		resto := resto - self.
		resultado := resultado proximo ].
	
	^resultado! !


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

!Tres class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:27:31'!
factorial

	^self previo factorial * self! !


!Tres class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:43:08'!
previo

	^Dos! !

!Tres class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:37:04'!
proximo
	
	^Cuatro ! !


!classDefinition: #Cuatro category: #Numeros!
Tres subclass: #Cuatro
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cuatro class' category: #Numeros!
Cuatro class
	instanceVariableNames: ''!

!Cuatro class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:51:24'!
previo

	^Tres! !

!Cuatro class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:50:55'!
proximo

	^MayorACuatro de: 5! !


!classDefinition: #MayorACuatro category: #Numeros!
Tres subclass: #MayorACuatro
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MayorACuatro class' category: #Numeros!
MayorACuatro class
	instanceVariableNames: 'enteroNativo'!

!MayorACuatro class methodsFor: 'replicacion' stamp: 'HAW 9/1/2017 13:56:05'!
de: unEnteroNativo

	| replicant |
	
	replicant := self originalSibling replicate.
	replicant enteroNativo: unEnteroNativo.
	
	^replicant ! !


!MayorACuatro class methodsFor: 'privado' stamp: 'HAW 8/28/2017 12:04:07'!
enteroNativo

	^enteroNativo ! !

!MayorACuatro class methodsFor: 'privado' stamp: 'HAW 8/28/2017 11:49:51'!
enteroNativo: unEnteroNativo

	enteroNativo := unEnteroNativo ! !


!MayorACuatro class methodsFor: 'igualdad' stamp: 'HAW 9/1/2017 13:55:51'!
= unObjeto

	^self == unObjeto or: [ (self isSiblingOf: unObjeto) and: [ enteroNativo = unObjeto enteroNativo ]]
	
	! !


!MayorACuatro class methodsFor: 'peano' stamp: 'HAW 8/28/2017 12:06:59'!
previo

	^enteroNativo = 5 
		ifTrue: [ Cuatro ]
		ifFalse: [ self de: enteroNativo - 1 ]! !

!MayorACuatro class methodsFor: 'peano' stamp: 'HAW 8/28/2017 12:09:46'!
proximo

	^self de: enteroNativo + 1! !


!MayorACuatro class methodsFor: 'imprimiendo' stamp: 'HAW 8/28/2017 12:11:57'!
printOn: aStream

	^aStream
		nextPutAll: self theOriginalDenotativeObject name;
		nextPutAll: ' de ';
		print: enteroNativo ! !


!MayorACuatro class methodsFor: 'fileout' stamp: 'HAW 4/6/2018 17:34:53'!
initializeCollaboratorsFromFile
	"Auto generated method for loading pourposes - Do not modify it"

	enteroNativo := nil.! !


!classDefinition: #DivisionTest category: #Numeros!
DenotativeObject subclass: #DivisionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DivisionTest class' category: #Numeros!
DivisionTest class
	instanceVariableNames: ''!

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:28:14'!
test01NoSePuedeDividirACeroPorCero

	Assert should: [ Cero/Cero ] signal: Error withDescription: Cero descripcionDeErrorDeNoSePuedeDividirPorCero.! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:27:57'!
test02CeroDivididoUnNumeroMayorQueCeroEsCero

	Assert that: Cero/Uno isEqualTo: Cero! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:28:30'!
test03NoSePuedeDividirCualquierNumeroPorCero

	Assert should: [ Uno/Cero ] signal: Error withDescription: Cero descripcionDeErrorDeNoSePuedeDividirPorCero.! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:29:03'!
test04UnNumeroDivididoPorSigoMismoEsSiMismo

	Assert that: Uno/Uno isEqualTo: Uno! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:29:41'!
test05LaDivisionEsUnaRestaSucesivaDelDividendoPorElDivisor

	Assert that: Cuatro/Dos isEqualTo: Dos! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:29:59'!
test06EsUnaDivisionEntera

	Assert that: Dos/Tres isEqualTo: Cero! !


!classDefinition: #FactorialTest category: #Numeros!
DenotativeObject subclass: #FactorialTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'FactorialTest class' category: #Numeros!
FactorialTest class
	instanceVariableNames: ''!

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:24:38'!
test01FactorialDeCeroNoEsValido

	Assert should: [ Cero factorial ] signal: Error withDescription: Cero descripcionDeErrorDeFactorialNoSoportado! !

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:25:50'!
test02FactorialDeUnoEsUno

	Assert that: Uno factorial isEqualTo: Uno! !

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:26:29'!
test03FactorialDeDosEsDos

	Assert that: Dos factorial isEqualTo: Dos! !

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:26:56'!
test04FactorialDeTresEsSeis

	Assert that: Tres factorial isEqualTo: (MayorACuatro de: 6)! !

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:30:06'!
test05FactorialDeCuatroEsVeinticuatro

	Assert that: Cuatro factorial isEqualTo: (MayorACuatro de: 24)! !

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:31:33'!
test05FactorialDeMayorACuatroFuncionaBien

	Assert that: (MayorACuatro de: 5) factorial isEqualTo: (MayorACuatro de: 24*5)! !


!classDefinition: #MayorIgualTest category: #Numeros!
DenotativeObject subclass: #MayorIgualTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MayorIgualTest class' category: #Numeros!
MayorIgualTest class
	instanceVariableNames: ''!

!MayorIgualTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:30:39'!
test01CeroEsMayorIgualACero

	Assert isTrue: Cero >= Cero! !

!MayorIgualTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:31:06'!
test02CeroEsMasChicoQueTodosLosNumerosMayoresACero

	Assert isFalse: Cero >= Uno! !

!MayorIgualTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:32:44'!
test03NumeroConPrevioMasChicoEsMenor

	Assert isFalse: Uno >= Dos! !

!MayorIgualTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 17:32:55'!
test04NumeroConPrevioMasGrandeEsMayor

	Assert isTrue: Dos >= Uno! !


!classDefinition: #RestaTest category: #Numeros!
DenotativeObject subclass: #RestaTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RestaTest class' category: #Numeros!
RestaTest class
	instanceVariableNames: ''!

!RestaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:15:29'!
test01CeroMenosCeroEsCero

	Assert that: Cero - Cero isEqualTo: Cero! !

!RestaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:22:57'!
test02NumerosMenoresACuatroRestanBien

	Assert that: Uno - Uno isEqualTo: Cero! !

!RestaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:22:39'!
test03NumerosMayoresACuatroRestanBien

	Assert that: (MayorACuatro de: 5) - Uno isEqualTo: Cuatro! !

!RestaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:23:11'!
test04RestaNoSoportaNumerosNegativos

	Assert should: [ Cero - Uno ] signal: Error withDescription: Cero descripcionDeErrorDeNumerosNegativosNoSoportados! !


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

!SumaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 11:22:31'!
test01CeroMasCualquierSumandoEsElSumando

	Assert that: Cero + Uno isEqualTo: Uno! !

!SumaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 11:23:24'!
test02UnoMasUnSumandoEsElProximoDelSumando

	Assert that: Uno + Cero isEqualTo: Uno! !

!SumaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 11:24:39'!
test03DosMasUnSumandoEsElProximoDelProximoDelSumando

	Assert that: Dos + Cero isEqualTo: Dos! !

!SumaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 11:36:52'!
test04TresMasUnSumandoEsElProximoDelProximoDelProximoDelSumando

	Assert that: Tres + Uno isEqualTo: Cuatro! !

!SumaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 11:47:57'!
test05CuatroMasUnSumandoIncrementaElSumandoEnCuatro

	Assert that: Cuatro + Uno isEqualTo: (MayorACuatro de: 5)! !

!SumaTest class methodsFor: 'tests' stamp: 'HAW 8/28/2017 12:05:32'!
test06SePuedeSumarMayoresACuatro

	Assert that: (MayorACuatro de: 5) + Uno isEqualTo: (MayorACuatro de: 6)! !

MayorACuatro initializeCollaboratorsFromFile!