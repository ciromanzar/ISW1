!classDefinition: #RTSUnitTest category: #'Sacar-If-Primer-Parcial'!
TestCase subclass: #RTSUnitTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sacar-If-Primer-Parcial'!

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 12:40:05'!
test01TankShouldStartWithInitialHealthPoints
	
	| aTank |
	
	aTank _ Tank with: Cannon new.
	
	self assert: aTank health equals: aTank initialHealth.! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 12:40:11'!
test02SoldierShouldStartWithInitialHealthPoints
	
	| aSoldier |
	
	aSoldier _ Soldier with: MachineGun new.
	
	self assert: aSoldier health equals: aSoldier initialHealth.! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 13:55:19'!
test03SoldierAttackingTankWithMachineGunReducesAttackedHealthBy5
	
	| attacker attacked |
	
	attacker _ Soldier with: MachineGun new.
	attacked _ Tank with: MachineGun new.
	
	attacker attackTo: attacked .
	
	self assert: attacked health equals: attacked initialHealth - 5.! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:08:52'!
test04SoldierAttackingSoldierWithMachineGunReducesAttackedHealthBy20WhenHealthBiggerThan40

	| attacker attacked |
	
	attacker _ Soldier with: MachineGun new.
	attacked _ Soldier with: MachineGun new.
	
	attacker attackTo: attacked .
	
	self assert: attacked health equals: attacked initialHealth - 20.! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:14:44'!
test05SoldierAttackingSoldierWithMachineGunKillsAttackedWhenHealthIsLessOrEqualTo40

	| attacker attacked |
	
	attacker _ Soldier with: MachineGun new.
	attacked _ Soldier with: MachineGun new.
	
	3 timesRepeat: [ attacker attackTo: attacked ].
	self assert: attacked isAlive.
	
	attacker attackTo: attacked.
	self deny: attacked isAlive.
	
	! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:11:40'!
test06SoldierAttackingTankWithCannonReducesAttackedHealthBy40WhenHealthIsBiggerThanHalfOfInitialHealth	

	| attacker attacked |
	
	attacker _ Soldier with: Cannon new.
	attacked _ Tank with: MachineGun new.
	
	attacker attackTo: attacked .
	
	self assert: attacked health equals: attacked initialHealth - 40.

	! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:18:30'!
test07SoldierAttackingTankWithCannonKillsAttackedWhenHealthIsLowerOrEqualToHalfOfInitialHealth	

	| attacker attacked |
	
	attacker _ Soldier with: Cannon new.
	attacked _ Tank with: MachineGun new.
	
	4 timesRepeat: [ attacker attackTo: attacked ].
	self assert: attacked isAlive.
	
	attacker attackTo: attacked.
	self deny: attacked isAlive.
	
	! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:04:55'!
test08SoldierAttackingSoldierWithCannonKillsAttackedSoldier	

	| attacker attacked |
	
	attacker _ Soldier with: Cannon new.
	attacked _ Soldier with: MachineGun new.
	
	attacker attackTo: attacked .
	
	self deny: attacked isAlive! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:23:03'!
test09TankAttackingSoldierWithMachineGunReducesAttackedHealthBy20

	| attacker attacked |
	
	attacker _ Tank with: MachineGun new.
	attacked _ Soldier with: MachineGun new.
	
	attacker attackTo: attacked .
	
	self assert: attacked health equals: attacked initialHealth - 20.! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:26:43'!
test10TankAttackingTankWithMachineGunReducesAttackedHealthBy10

	| attacker attacked |
	
	attacker _ Tank with: MachineGun new.
	attacked _ Tank with: MachineGun new.
	
	attacker attackTo: attacked .
	
	self assert: attacked health equals: attacked initialHealth - 10! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:26:50'!
test11TankAttackingSoldierWithCannonKillsAttacked

	| attacker attacked |
	
	attacker _ Tank with: Cannon new.
	attacked _ Soldier with: MachineGun new.
	
	attacker attackTo: attacked .
	
	self deny: attacked isAlive! !

!RTSUnitTest methodsFor: 'tests' stamp: 'HAW 5/3/2018 14:28:33'!
test12TankAttackingTankWithCannonReducesAttackedHealthByHalf

	| attacker attacked |
	
	attacker _ Tank with: Cannon new.
	attacked _ Tank with: MachineGun new.
	
	attacker attackTo: attacked .
	
	self assert: attacked health equals: attacked initialHealth / 2! !


!classDefinition: #RTSUnit category: #'Sacar-If-Primer-Parcial'!
Object subclass: #RTSUnit
	instanceVariableNames: 'weapon health'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sacar-If-Primer-Parcial'!

!RTSUnit methodsFor: 'initialization' stamp: 'HAW 5/3/2018 10:23:55'!
initializeWith: aWeapon

	weapon := aWeapon.
	health := self initialHealth.
	! !


!RTSUnit methodsFor: 'attack' stamp: 'HAW 5/3/2018 10:41:06'!
attackTo: anEnemy
	
	self subclassResponsibility ! !


!RTSUnit methodsFor: 'health' stamp: 'ISW1 5/1/2018 22:01:27'!
health

	^ health.! !

!RTSUnit methodsFor: 'health' stamp: 'HAW 5/3/2018 14:08:18'!
health: newHealth 
	
	health := newHealth ! !

!RTSUnit methodsFor: 'health' stamp: 'HAW 5/3/2018 10:22:35'!
initialHealth

	^ self class initialHealth.! !

!RTSUnit methodsFor: 'health' stamp: 'ISW1 5/1/2018 23:48:07'!
isAlive

	^ health > 0! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RTSUnit class' category: #'Sacar-If-Primer-Parcial'!
RTSUnit class
	instanceVariableNames: ''!

!RTSUnit class methodsFor: 'health' stamp: 'HAW 5/3/2018 10:22:57'!
initialHealth

	self subclassResponsibility ! !


!RTSUnit class methodsFor: 'instance creation' stamp: 'HAW 5/3/2018 10:25:42'!
with: aWeapon

	^self new initializeWith: aWeapon
! !


!classDefinition: #Soldier category: #'Sacar-If-Primer-Parcial'!
RTSUnit subclass: #Soldier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sacar-If-Primer-Parcial'!

!Soldier methodsFor: 'attack' stamp: 'CZ 5/3/2018 20:30:08'!
attackTo: anEnemy
	^ weapon isShotBySoldierAttacking: anEnemy .
! !

!Soldier methodsFor: 'attack' stamp: 'CZ 5/3/2018 20:22:56'!
isShotBySoldierWithCannon
	self health: 0! !

!Soldier methodsFor: 'attack' stamp: 'CZ 5/3/2018 20:34:55'!
isShotBySoldierWithMachineGun
	self health > 40 
		ifTrue: [ ^self health: self health - 20 ]
		ifFalse: [ ^self health: 0 ].
		
	
"Dejo este if porque considero que no se justifica la complejidad de abstraer la clase Soldier según si su Healt es mayor o menor 40"! !

!Soldier methodsFor: 'attack' stamp: 'CZ 5/3/2018 20:34:47'!
isShotByTankWithCannon
	self health: 0
! !

!Soldier methodsFor: 'attack' stamp: 'CZ 5/3/2018 20:29:29'!
isShotByTankWithMachineGun
	self health: self health - 20! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Soldier class' category: #'Sacar-If-Primer-Parcial'!
Soldier class
	instanceVariableNames: ''!

!Soldier class methodsFor: 'health' stamp: 'HAW 5/3/2018 10:23:21'!
initialHealth

	^100! !


!classDefinition: #Tank category: #'Sacar-If-Primer-Parcial'!
RTSUnit subclass: #Tank
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sacar-If-Primer-Parcial'!

!Tank methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:20:08'!
attackTo: anEnemy
	^ weapon isShotByTankAttacking: anEnemy .
	"
	(weapon isKindOf: MachineGun) ifTrue: [
		(anEnemy isKindOf: Tank) ifTrue: [^ anEnemy health: anEnemy health - 10].
		(anEnemy isKindOf: Soldier) ifTrue: [ 
			^anEnemy health: anEnemy health - 20 ]].
		
	
	(weapon isKindOf: Cannon) ifTrue: [
		(anEnemy isKindOf: Tank) ifTrue: [^anEnemy health: anEnemy health / 2 ].
		(anEnemy isKindOf: Soldier) ifTrue: [ ^anEnemy health: 0 ]].
	
	
	self error: 'No se que hacer!!'."! !

!Tank methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:34:13'!
isShotBySoldierWithCannon
	self health > (self initialHealth / 2)
		ifTrue: [ ^self health: self health - 40 ]
		ifFalse: [ ^self health: 0 ].
		
"Dejo este if porque considero que no se justifica la complejidad de abstraer la clase Tank según si su Healt es mayor o menor a la inicial"! !

!Tank methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:19:12'!
isShotBySoldierWithMachineGun
	self health: self health - 5.! !

!Tank methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:27:42'!
isShotByTankWithCannon
	self health: self health / 2! !

!Tank methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:29:25'!
isShotByTankWithMachineGun
	self health: self health - 10! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Tank class' category: #'Sacar-If-Primer-Parcial'!
Tank class
	instanceVariableNames: ''!

!Tank class methodsFor: 'health' stamp: 'HAW 5/3/2018 10:23:34'!
initialHealth

	^300! !


!classDefinition: #Weapon category: #'Sacar-If-Primer-Parcial'!
Object subclass: #Weapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sacar-If-Primer-Parcial'!


!classDefinition: #Cannon category: #'Sacar-If-Primer-Parcial'!
Weapon subclass: #Cannon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sacar-If-Primer-Parcial'!

!Cannon methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:20:49'!
isShotBySoldierAttacking: anEnemy
	anEnemy isShotBySoldierWithCannon.! !

!Cannon methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:24:28'!
isShotByTankAttacking: anEnemy
	anEnemy isShotByTankWithCannon.! !


!classDefinition: #MachineGun category: #'Sacar-If-Primer-Parcial'!
Weapon subclass: #MachineGun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Sacar-If-Primer-Parcial'!

!MachineGun methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:17:16'!
isShotBySoldierAttacking: anEnemy
	anEnemy isShotBySoldierWithMachineGun.! !

!MachineGun methodsFor: 'as yet unclassified' stamp: 'CZ 5/3/2018 20:24:57'!
isShotByTankAttacking: anEnemy
	anEnemy isShotByTankWithMachineGun.! !
