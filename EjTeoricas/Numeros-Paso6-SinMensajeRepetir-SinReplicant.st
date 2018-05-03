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

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test01NoSePuedeDividirACeroPorCero
	Assert
		should: [ O / O ]
		signal: Error
		withDescription: O descripcionDeErrorDeNoSePuedeDividirPorCero.! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test02CeroDivididoUnNumeroMayorQueCeroEsCero
	Assert
		that: O / I
		isEqualTo: O.! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test03NoSePuedeDividirCualquierNumeroPorCero
	Assert
		should: [ I / O ]
		signal: Error
		withDescription: O descripcionDeErrorDeNoSePuedeDividirPorCero.! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:23:33'!
test04UnNumeroDivididoPorSigoMismoEsSiMismo
	Assert
		that: I / I
		isEqualTo: I.! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:25:10'!
test05LaDivisionEsUnaRestaSucesivaDelDividendoPorElDivisor
	Assert
		that: IIII / II
		isEqualTo: II.! !

!DivisionTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test06EsUnaDivisionEntera
	Assert
		that: II / III
		isEqualTo: O.! !


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

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test01FactorialDeCeroNoEsValido
	Assert
		should: [ O factorial ]
		signal: Error
		withDescription: O descripcionDeErrorDeFactorialNoSoportado.! !

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:23:33'!
test02FactorialDeUnoEsUno
	Assert
		that: I factorial
		isEqualTo: I.! !

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:23:55'!
test03FactorialDeDosEsDos
	Assert
		that: II factorial
		isEqualTo: II.! !

!FactorialTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:16'!
test04FactorialDeTresEsSeis
	Assert
		that: III factorial
		isEqualTo: IIIIII.! !


!classDefinition: #O category: #Numeros!
DenotativeObject subclass: #O
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'O class' category: #Numeros!
O class
	instanceVariableNames: ''!

!O class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 20:33:41'!
* unMultiplicador
	^ unMultiplicador
		acumular: self
		a: O.! !

!O class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 17:35:12'!
+ unSumando

	^unSumando! !

!O class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 19:48:07'!
- unRestando

	^self menos: unRestando siNoSePuede: [ self error: self descripcionDeErrorDeNumerosNegativosNoSoportados ]! !

!O class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 17:23:20'!
/ unDivisor

	^unDivisor dividirA: self! !

!O class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:25:19'!
factorial
	
	self error: self descripcionDeErrorDeFactorialNoSoportado ! !


!O class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 18:05:53'!
acumular: unSumando a: unAcumulador

	^unAcumulador! !

!O class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 18:18:53'!
contarDesde: unCociente restando: unDivisor

	^(self menos: unDivisor siNoSePuede: [ ^unCociente ]) contarDesde: unCociente proximo restando: unDivisor! !

!O class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 17:23:45'!
dividirA: unDividendo

	self error: self descripcionDeErrorDeNoSePuedeDividirPorCero
	! !

!O class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 19:56:25'!
menos: unRestando siNoSePuede: aBlockClosure 
	
	^unRestando restarA: self siNoSePuede: aBlockClosure ! !

!O class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 19:50:31'!
restarA: unNumero siNoSePuede: aBlock

	^unNumero! !


!O class methodsFor: 'peano' stamp: 'HAW 4/6/2018 18:27:37'!
previo
	
	^self previoSiNoPuede: [ self error: self descripcionDeErrorDeNumerosNegativosNoSoportados ]! !

!O class methodsFor: 'peano' stamp: 'HAW 4/6/2018 18:27:52'!
previoSiNoPuede: aBlock
	
	^aBlock value! !

!O class methodsFor: 'peano' stamp: 'HAW 4/6/2018 20:16:07'!
proximo
	
	^self children first! !


!O class methodsFor: 'errores' stamp: 'HAW 8/28/2017 12:25:01'!
descripcionDeErrorDeFactorialNoSoportado
	
	^'factorial es válido para número mayores a cero'! !

!O class methodsFor: 'errores' stamp: 'HAW 4/6/2018 12:49:53'!
descripcionDeErrorDeNoSePuedeDividirPorCero
	
	^'No se puede dividir por cero'! !

!O class methodsFor: 'errores' stamp: 'HAW 8/28/2017 12:21:55'!
descripcionDeErrorDeNumerosNegativosNoSoportados
	
	^'Número negativos no soportados'! !


!classDefinition: #I category: #Numeros!
O subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: #Numeros!
I class
	instanceVariableNames: ''!

!I class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 4/6/2018 18:07:18'!
+ unSumando

	^self previo + unSumando proximo! !

!I class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:26:05'!
factorial

	^self! !


!I class methodsFor: 'peano' stamp: 'HAW 4/6/2018 20:15:35'!
previoSiNoPuede: aBlock
	
	^self parent! !

!I class methodsFor: 'peano' stamp: 'HAW 4/6/2018 20:24:41'!
proximo

	self children ifEmpty: [ self createChildNamed: self name, 'I' ].
	^self children first! !


!I class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 18:07:28'!
acumular: unSumando a: unAcumulador
 
	^self previo acumular: unSumando a: unAcumulador + unSumando ! !

!I class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 20:33:41'!
dividirA: unDividendo
	^ unDividendo
		contarDesde: O
		restando: self.! !

!I class methodsFor: 'operaciones aritmeticas - privado' stamp: 'HAW 4/6/2018 19:51:58'!
restarA: unNumero siNoSePuede: aBlock

	^self previo restarA: (unNumero previoSiNoPuede: aBlock) siNoSePuede: aBlock ! !


!classDefinition: #II category: #Numeros!
I subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!


!classDefinition: #III category: #Numeros!
II subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: #Numeros!
III class
	instanceVariableNames: ''!

!III class methodsFor: 'operaciones aritmeticas' stamp: 'HAW 8/28/2017 12:27:31'!
factorial

	^self previo factorial * self! !


!classDefinition: #IIII category: #Numeros!
III subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!


!classDefinition: #IIIII category: #Numeros!
IIII subclass: #IIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!


!classDefinition: #IIIIII category: #Numeros!
IIIII subclass: #IIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros'!


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

!RestaTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test01CeroMenosCeroEsCero
	Assert
		that: O - O
		isEqualTo: O.! !

!RestaTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test02RestarNumerosIgualesDaCero
	Assert
		that: I - I
		isEqualTo: O.! !

!RestaTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:30:34'!
test03NumerosMayoresACeroRestanBien
	Assert
		that: III - I
		isEqualTo: II.! !

!RestaTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test04RestaNoSoportaNumerosNegativos
	Assert
		should: [ O - I ]
		signal: Error
		withDescription: O descripcionDeErrorDeNumerosNegativosNoSoportados.! !


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

!SumaTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test01CeroMasCualquierSumandoEsElSumando
	Assert
		that: O + I
		isEqualTo: I.! !

!SumaTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test02UnoMasUnSumandoEsElProximoDelSumando
	Assert
		that: I + O
		isEqualTo: I.! !

!SumaTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:33:41'!
test03DosMasUnSumandoEsElProximoDelProximoDelSumando
	Assert
		that: II + O
		isEqualTo: II.! !

!SumaTest class methodsFor: 'tests' stamp: 'HAW 4/6/2018 20:25:10'!
test04TresMasUnSumandoEsElProximoDelProximoDelProximoDelSumando
	Assert
		that: III + I
		isEqualTo: IIII.! !
