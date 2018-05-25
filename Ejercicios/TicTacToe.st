!classDefinition: #TicTacToeTest category: #TicTacToe!
TestCase subclass: #TicTacToeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TicTacToe'!

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:10:30'!
test01
	|game|
	game := TicTacToe new.
	
	self assert: game Xs isEmpty.
	self assert: game Os isEmpty.! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:19:53'!
test02
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	
	self assert: 1 equals: game Xs size.
	self assert: (game Xs includes: 1@1).
	self assert: game Os isEmpty.! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:30:33'!
test03
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	game putOAt: 2@1.
	
	self assert: 1 equals: game Xs size.
	self assert: 1 equals: game Os size.
	self assert: (game Xs includes: 1@1).
	self assert: (game Os includes: 2@1).! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:55:13'!
test04
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	game putOAt: 1@2.
	
	self
	should: [game putOAt: 2@2]  
	raise: Error - MessageNotUnderstood
	withExceptionDo: [:anError| 
		self assert: TicTacToe notOTurnErrorMessage equals: anError messageText.
		self assert: 1 equals: game Os size.
		self assert: (game Os includes: 1@2).
		self assert: (game Xs includes: 1@1).
		].
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:51:21'!
test05
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	
	self
	should: [game putXAt: 2@2]  
	raise: Error - MessageNotUnderstood
	withExceptionDo: [:anError| 
		self assert: TicTacToe notXTurnErrorMessage equals: anError messageText.
		self assert: 1 equals: game Xs size.
		self assert: (game Xs includes: 1@1).
		self assert: game Os isEmpty.
		].
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:00:31'!
test06
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	game putOAt: 2@2.	
	
	self
	should: [game putXAt: 1@1]  
	raise: Error - MessageNotUnderstood
	withExceptionDo: [:anError| 
		self assert: TicTacToe positionTakenErrorMessage equals: anError messageText.
		self assert: 1 equals: game Xs size.
		self assert: (game Xs includes: 1@1).
		self assert: 1 equals: game Os size.
		self assert: (game Os includes: 2@2).
		].
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:00:54'!
test07
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	game putOAt: 2@2.	
	
	self
	should: [game putXAt: 2@2]  
	raise: Error - MessageNotUnderstood
	withExceptionDo: [:anError| 
		self assert: TicTacToe positionTakenErrorMessage equals: anError messageText.
		self assert: 1 equals: game Xs size.
		self assert: (game Xs includes: 1@1).
		self assert: 1 equals: game Os size.
		self assert: (game Os includes: 2@2).
		].
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:05:09'!
test08
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	
	self
	should: [game putOAt: 1@1]  
	raise: Error - MessageNotUnderstood
	withExceptionDo: [:anError| 
		self assert: TicTacToe positionTakenErrorMessage equals: anError messageText.
		self assert: 1 equals: game Xs size.
		self assert: (game Xs includes: 1@1).
		self assert: game Os isEmpty .
		].
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:06:33'!
test09
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	game putOAt: 2@2.
	
	self
	should: [game putXAt: 2@2]  
	raise: Error - MessageNotUnderstood
	withExceptionDo: [:anError| 
		self assert: TicTacToe positionTakenErrorMessage equals: anError messageText.
		self assert: 1 equals: game Xs size.
		self assert: (game Xs includes: 1@1).
		self assert: 1 equals: game Os size.
		self assert: (game Os includes: 2@2).
		].
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:24:05'!
test10
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	game putOAt: 2@1.
	game putXAt: 2@2.
	game putOAt: 3@3.
		
		self deny: game OHasWon.
		self deny: game XHasWon.
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:39:56'!
test11
	|game|
	game := TicTacToe new.
	
	game putXAt: 1@1.
	game putOAt: 2@1.
	game putXAt: 1@2.
	game putOAt: 3@3.
	game putXAt: 1@3.
			
		self deny: game OHasWon.
		self assert: game XHasWon.
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:43:54'!
test12
	|game|
	game := TicTacToe new.
	
	game putXAt: 2@1.
	game putOAt: 1@1.
	game putXAt: 2@2.
	game putOAt: 3@3.
	game putXAt: 2@3.
			
		self deny: game OHasWon.
		self assert: game XHasWon.
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:45:09'!
test13
	|game|
	game := TicTacToe new.
	
	game putXAt: 3@1.
	game putOAt: 1@1.
	game putXAt: 3@2.
	game putOAt: 2@2.
	game putXAt: 2@3.
	game putOAt: 3@3.
			
		self assert: game OHasWon.
		self deny: game XHasWon.
	! !

!TicTacToeTest methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 21:30:09'!
test14
	|game|
	game := TicTacToe new.
	
	game putXAt: 3@1.
	game putOAt: 2@1.
	game putXAt: 2@2.
	game putOAt: 2@3.
	game putXAt: 1@3.
	game putOAt: 1@2.
			
		self assert: game XHasWon.
		self deny: game OHasWon.
	! !


!classDefinition: #TicTacToe category: #TicTacToe!
Object subclass: #TicTacToe
	instanceVariableNames: 'Xs Os Turn winner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TicTacToe'!

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:41:25'!
OHasWon
	^ winner = #O.! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:14:26'!
Os
	^Os.! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:41:17'!
XHasWon
	^ winner = #X.! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:14:22'!
Xs
	^Xs.! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 21:05:40'!
hasComplete: positions col: aCol
	^(positions count: [:position | position y = aCol ]) = 3.! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 21:05:29'!
hasComplete: positions row: aRow
	^ (positions count: [:position | position x = aRow ]) = 3.! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 21:27:55'!
hasCompleteDiagonal: positions
	^(positions count: [:position | position x = position y]) = 3 or: ((positions count: [:position | (position x + position y) = 4]) = 3)! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 20:33:23'!
initialize
	Xs := Set new.
	Os := Set new.
	Turn := 'X'.! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 21:32:46'!
putOAt: aPosition
	Turn = #X ifTrue: [self error: self class notOTurnErrorMessage ].
	(Xs includes: aPosition) ifTrue: [ self error: self class positionTakenErrorMessage ]. 
	(Os includes: aPosition) ifTrue: [ self error: self class positionTakenErrorMessage ]. 
	winner = nil ifFalse: [self error: self class canNotPlayWhenGameIsOver ].
	Os add: aPosition.
	Turn := #X.
	
	(self hasComplete: (self Os) row: aPosition x) ifTrue: [winner  := #O].
	(self hasComplete: (self Os) col: aPosition x) ifTrue: [winner  := #O].
	(self hasCompleteDiagonal: self Os) ifTrue: [winner  := #O].! !

!TicTacToe methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 21:31:33'!
putXAt: aPosition
	Turn = #O ifTrue: [self error: self class notXTurnErrorMessage ].
	(Xs includes: aPosition) ifTrue: [ self error: self class positionTakenErrorMessage ]. 
	(Os includes: aPosition) ifTrue: [ self error: self class positionTakenErrorMessage ]. 
	winner = nil ifFalse: [self error: self class canNotPlayWhenGameIsOver ].
	Xs add: aPosition.
	Turn := #O.
	
	(self hasComplete: (self Xs) row: aPosition x) ifTrue: [winner  := #X].
	(self hasComplete: (self Xs) col: aPosition x) ifTrue: [winner  := #X].
	(self hasCompleteDiagonal: self Xs) ifTrue: [winner  := #X].
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TicTacToe class' category: #TicTacToe!
TicTacToe class
	instanceVariableNames: ''!

!TicTacToe class methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 21:32:14'!
canNotPlayWhenGameIsOver
	^'No se pueder jugar si el juego termino.'.! !

!TicTacToe class methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:46:49'!
notOTurnErrorMessage
	^'No es el turno de O'.! !

!TicTacToe class methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:38:47'!
notXTurnErrorMessage
	^'No es el turno de X'.! !

!TicTacToe class methodsFor: 'as yet unclassified' stamp: 'CZ 5/24/2018 19:56:50'!
positionTakenErrorMessage
	^'Posicion tomada'.! !
