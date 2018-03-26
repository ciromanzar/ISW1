!classDefinition: #I category: #'Quinta Actividad'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Quinta Actividad'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: #'Quinta Actividad'!
I class
	instanceVariableNames: 'next previous'!

!I class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:46:11'!
next 
	^II! !

!I class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:46:24'!
previous
	^self error:'no existe'! !

I instVarNamed: 'next' put: nil!
I instVarNamed: 'previous' put: nil!

!classDefinition: #II category: #'Quinta Actividad'!
DenotativeObject subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Quinta Actividad'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: #'Quinta Actividad'!
II class
	instanceVariableNames: 'next previous'!

!II class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:54:21'!
next

	next ifNil:
	[
		next := self cloneNamed: (self name, 'I').
		next previous: self.
		
	].
	^next

	
	! !

!II class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:46:39'!
previous
	^previous! !

!II class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:46:52'!
previous: otroNumero
	^previous := otroNumero! !

II instVarNamed: 'next' put: III!
II instVarNamed: 'previous' put: I!

!classDefinition: #III category: #'Quinta Actividad'!
DenotativeObject subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Quinta Actividad'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: #'Quinta Actividad'!
III class
	instanceVariableNames: 'next previous'!

!III class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:56:13'!
next

	next ifNil:
	[
		next := self cloneNamed: (self name, 'I').
		next previous: self.
		
	].
	^next

	
	! !

!III class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:56:13'!
previous
	^previous! !

!III class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:56:13'!
previous: otroNumero
	^previous := otroNumero! !

III instVarNamed: 'next' put: IIII!
III instVarNamed: 'previous' put: II!

!classDefinition: #IIII category: #'Quinta Actividad'!
DenotativeObject subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Quinta Actividad'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIII class' category: #'Quinta Actividad'!
IIII class
	instanceVariableNames: 'next previous'!

!IIII class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:56:26'!
next

	next ifNil:
	[
		next := self cloneNamed: (self name, 'I').
		next previous: self.
		
	].
	^next

	
	! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:56:26'!
previous
	^previous! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'CZ 3/22/2018 21:56:26'!
previous: otroNumero
	^previous := otroNumero! !

IIII instVarNamed: 'next' put: nil!
IIII instVarNamed: 'previous' put: III!