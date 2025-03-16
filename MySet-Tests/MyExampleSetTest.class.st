"
This is an example class for playing and understanding the tests in the pharo
"
Class {
	#name : 'MyExampleSetTest',
	#superclass : 'TestCase',
	#instVars : [
		'full',
		'empty'
	],
	#category : 'MySet-Tests',
	#package : 'MySet-Tests'
}

{ #category : 'running' }
MyExampleSetTest >> setUp [
	super setUp.
	"Put here a common initialization logic for tests"
empty := Set new.
full := Set with: 5 with: 6

]

{ #category : 'tests' }
MyExampleSetTest >> testIllegal [

self assert: (full isEmptyOrNil ).
self should: [ empty at: 5 ] raise: Error.
self should: [ empty at: 5 put: #zork ] raise: Error
]

{ #category : 'tests' }
MyExampleSetTest >> testIncludes [

|s|
s := Set new.
s add: 7;add: 6.

self assert: (s includes: 7) description: [ 'The test for functionality of includes failed!' ].
self assert: (s includes: 6) description: [ 'The test for functionality of includes failed!' ]



]
