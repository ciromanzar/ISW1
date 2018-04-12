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

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 18:03:11'!
* unMultiplicador

	^unMultiplicador acumular: self a: Cero! !

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 17:35:12'!
+ unSumando

	^unSumando! !

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 19:48:07'!
- unRestando

	^self menos: unRestando siNoSePuede: [ self error: self descripcionDeErrorDeNumerosNegativosNoSoportados ]! !

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 17:23:20'!
/ unDivisor

	^unDivisor dividirA: self! !

!Cero class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:25:19'!
factorial
	
	self error: self descripcionDeErrorDeFactorialNoSoportado ! !


!Cero class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 18:05:53'!
acumular: unSumando a: unAcumulador

	^unAcumulador! !

!Cero class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 18:18:53'!
contarDesde: unCociente restando: unDivisor

	^(self menos: unDivisor siNoSePuede: [ ^unCociente ]) contarDesde: unCociente proximo restando: unDivisor! !

!Cero class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 17:23:45'!
dividirA: unDividendo

	self error: self descripcionDeErrorDeNoSePuedeDividirPorCero
	! !

!Cero class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 19:56:25'!
menos: unRestando siNoSePuede: aBlockClosure 
	
	^unRestando restarA: self siNoSePuede: aBlockClosure ! !

!Cero class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 19:50:31'!
restarA: unNumero siNoSePuede: aBlock

	^unNumero! !


!Cero class methodsFor: 'peano' stamp: 'HAW 4/6/2018 18:27:37'!
previo
	
	^self previoSiNoPuede: [ self error: self descripcionDeErrorDeNumerosNegativosNoSoportados ]! !

!Cero class methodsFor: 'peano' stamp: 'HAW 4/6/2018 18:27:52'!
previoSiNoPuede: aBlock
	
	^aBlock value! !

!Cero class methodsFor: 'peano' stamp: 'HAW 4/6/2018 20:16:07'!
proximo
	
	^self children first! !


!Cero class methodsFor: 'errores' stamp: 'HAW 8/28/2017 12:25:01'!
descripcionDeErrorDeFactorialNoSoportado
	
	^'factorial es válido para número mayores a cero'! !

!Cero class methodsFor: 'errores' stamp: 'HAW 4/6/2018 12:49:53'!
descripcionDeErrorDeNoSePuedeDividirPorCero
	
	^'No se puede dividir por cero'! !

!Cero class methodsFor: 'errores' stamp: 'HAW 8/28/2017 12:21:55'!
descripcionDeErrorDeNumerosNegativosNoSoportados
	
	^'Número negativos no soportados'! !


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

!Uno class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 18:07:18'!
+ unSumando

	^self previo + unSumando proximo! !

!Uno class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:26:05'!
factorial

	^self! !


!Uno class methodsFor: 'peano' stamp: 'HAW 4/6/2018 20:15:35'!
previoSiNoPuede: aBlock
	
	^self parent! !


!Uno class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 18:07:28'!
acumular: unSumando a: unAcumulador
 
	^self previo acumular: unSumando a: unAcumulador + unSumando ! !

!Uno class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 18:15:27'!
dividirA: unDividendo

	^unDividendo contarDesde: Cero restando: self! !

!Uno class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 19:51:58'!
restarA: unNumero siNoSePuede: aBlock

	^self previo restarA: (unNumero previoSiNoPuede: aBlock) siNoSePuede: aBlock ! !


!classDefinition: #Dos category: #Numeros!
Uno subclass: #Dos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!


!classDefinition: #Tres category: #Numeros!
Dos subclass: #Tres
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

!Cuatro class methodsFor: 'peano' stamp: 'HAW 8/28/2017 11:50:55'!
proximo

	^MayorACuatro de: 5! !


!classDefinition: #MayorACuatro category: #Numeros!
Cuatro subclass: #MayorACuatro
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


!MayorACuatro class methodsFor: 'peano' stamp: 'HAW 4/6/2018 18:29:30'!
previoSiNoPuede: aBlock

	^enteroNativo = 5 
		ifTrue: [ Cuatro ]
		ifFalse: [ self de: enteroNativo - 1 ]! !

!MayorACuatro class methodsFor: 'peano' stamp: 'HAW 8/28/2017 12:09:46'!
proximo

	^self de: enteroNativo + 1! !


!MayorACuatro class methodsFor: 'imprimiendo' stamp: 'HAW 4/6/2018 20:08:34'!
printOn: aStream

	^aStream
		nextPutAll: self theOriginalDenotativeObject name;
		nextPutAll: ' de: ';
		print: enteroNativo ! !


!MayorACuatro class methodsFor: 'fileout' stamp: 'HAW 4/6/2018 20:17:58'!
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