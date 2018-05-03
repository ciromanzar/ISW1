!classDefinition: #ChaltenTest category: #'Codigo-Repetido-Primer-Parcial'!
TestCase subclass: #ChaltenTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Codigo-Repetido-Primer-Parcial'!

!ChaltenTest methodsFor: 'testing' stamp: 'HAW 5/2/2018 18:42:38'!
test01CanCreateIntervalEverySameDayOfWeekAsFromDayOfWeek
						
	| aMonday interval |
	
	aMonday := FixedGregorianDate yearNumber: 2004 monthNumber: 1 dayNumber: 5.
	interval := aMonday 
		to: (aMonday nextDay: GregorianDay monday)
		everyDay: GregorianDay monday.
			
	self assert: aMonday equals: interval first.
	self assert: (aMonday nextDay: GregorianDay monday) equals: interval last.
	self assert: #(5 12) equals: (interval collect: [ :aDate | aDate dayNumber ]) asArray ! !

!ChaltenTest methodsFor: 'testing' stamp: 'HAW 5/3/2018 11:27:46'!
test02CanCreateIntervalEveryDifferentDayOfWeekAsFromDayOfWeek
						
	| from interval |
	
	from := FixedGregorianDate yearNumber: 2018 monthNumber: 4 dayNumber: 30.
	interval := from 
		to: (from nextDay: GregorianDay monday) next
		everyDay: GregorianDay tuesday.
			
	self assert: from next equals: interval first.
	self assert: (from nextDay: GregorianDay monday) next equals: interval last.
	self assert: #(1 8) equals: (interval collect: [ :aDate | aDate dayNumber ]) asArray 
	! !

!ChaltenTest methodsFor: 'testing' stamp: 'HAW 5/3/2018 11:28:00'!
test03CanCreateIntervalWithSpecificDayOfWeeksIncludingFromDayOfWeek
						
	| aMonday interval |
	
	aMonday := FixedGregorianDate yearNumber: 2004 monthNumber: 1 dayNumber: 5.
	interval := aMonday 
		to: (aMonday nextDay: GregorianDay monday)
		every: (Array with: GregorianDay monday with: GregorianDay wednesday with: GregorianDay friday).
			
	self assert: aMonday equals: interval first.
	self assert: (aMonday nextDay: GregorianDay monday) equals: interval last.
	self assert: #(5 7 9 12) equals: (interval collect: [ :aDate | aDate dayNumber ]) asArray 
! !

!ChaltenTest methodsFor: 'testing' stamp: 'HAW 5/3/2018 11:28:32'!
test04CanCreateIntervalWithSpecificDayOfWeeksExcludingFromDayOfWeek
						
	| from interval |
	
	from := FixedGregorianDate yearNumber: 2018 monthNumber: 5 dayNumber: 7.
	interval := from 
		to: ((from nextDay: GregorianDay monday) next)
		every: (Array with: GregorianDay tuesday with: GregorianDay wednesday with: GregorianDay friday).
			
	self assert: from next equals: interval first.
	self assert: (from nextDay: GregorianDay monday) next equals: interval last.
	self assert: #(8 9 11 15) equals: (interval collect: [ :aDate | aDate dayNumber ]) asArray ! !
