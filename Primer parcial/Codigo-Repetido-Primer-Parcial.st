!classDefinition: #ChaltenTest category: #'Codigo-Repetido-Primer-Parcial'!
TestCase subclass: #ChaltenTest
	instanceVariableNames: 'aMonday'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Codigo-Repetido-Primer-Parcial'!

!ChaltenTest methodsFor: 'testing' stamp: 'CZ 5/3/2018 18:58:38'!
assertInterval: anInterval goesFromADay: aDay toNextDayOfWeek: aGregorianDay HavingDayNumbers: aDayNumbersArray
	self assert: aDay equals: anInterval first.
	self assert: (aDay nextDay: aGregorianDay) equals: anInterval last.
	self assert: aDayNumbersArray equals: (anInterval collect: [ :aDate | aDate dayNumber ]) asArray ! !

!ChaltenTest methodsFor: 'testing' stamp: 'CZ 5/3/2018 20:42:32'!
assertInterval: anInterval goesFromNextDay: aDayBefore toNextDayToTheNextDayOfWeek: aGregorianDay HavingDayNumbers: aDayNumbersArray
	self assert: aDayBefore next equals: anInterval first.
	self assert: (aDayBefore nextDay: aGregorianDay) next equals: anInterval last.
	self assert: aDayNumbersArray equals: (anInterval collect: [ :aDate | aDate dayNumber ]) asArray.! !

!ChaltenTest methodsFor: 'testing' stamp: 'CZ 5/3/2018 18:37:07'!
setUp
	aMonday := FixedGregorianDate yearNumber: 2004 monthNumber: 1 dayNumber: 5.! !

!ChaltenTest methodsFor: 'testing' stamp: 'CZ 5/3/2018 18:59:57'!
test01CanCreateIntervalEverySameDayOfWeekAsFromDayOfWeek
						
	| interval |
	
	interval := aMonday 
		to: (aMonday nextDay: GregorianDay monday)
		everyDay: GregorianDay monday.
			
	self assertInterval: interval goesFromADay: aMonday toNextDayOfWeek: GregorianDay monday HavingDayNumbers: #(5 12)! !

!ChaltenTest methodsFor: 'testing' stamp: 'CZ 5/3/2018 20:42:26'!
test02CanCreateIntervalEveryDifferentDayOfWeekAsFromDayOfWeek

	| from interval |
	
	from _ FixedGregorianDate yearNumber: 2018 monthNumber: 4 dayNumber: 30.
	interval _ from
		to: (from nextDay: GregorianDay monday) next
		everyDay: GregorianDay tuesday.

	self assertInterval: interval 	goesFromNextDay: from toNextDayToTheNextDayOfWeek: GregorianDay monday HavingDayNumbers: #(1 8 ).! !

!ChaltenTest methodsFor: 'testing' stamp: 'CZ 5/3/2018 19:00:08'!
test03CanCreateIntervalWithSpecificDayOfWeeksIncludingFromDayOfWeek
						
	| interval |
	
	interval := aMonday 
		to: (aMonday nextDay: GregorianDay monday)
		every: (Array with: GregorianDay monday with: GregorianDay wednesday with: GregorianDay friday).
			
		
	self assertInterval: interval goesFromADay: aMonday toNextDayOfWeek: GregorianDay monday HavingDayNumbers: #(5 7 9 12)! !

!ChaltenTest methodsFor: 'testing' stamp: 'CZ 5/3/2018 20:42:19'!
test04CanCreateIntervalWithSpecificDayOfWeeksExcludingFromDayOfWeek

	| from interval |

	from _ FixedGregorianDate yearNumber: 2018 monthNumber: 5 dayNumber: 7.
	interval _ from
		to: (from nextDay: GregorianDay monday) next
		every: 	(Array with: GregorianDay tuesday with: GregorianDay wednesday with: GregorianDay friday).
		
	self assertInterval: interval 	goesFromNextDay: from toNextDayToTheNextDayOfWeek: GregorianDay monday HavingDayNumbers: #(8 9 11 15 ).! !
