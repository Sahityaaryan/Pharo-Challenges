"
This is the test written to check whether the value of the instance variable count is equal to what we are specifying while sending the ""count"" message or not.
"
Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter-Tests',
	#package : 'MyCounter-Tests'
}

{ #category : 'tests' }
CounterTest >> testCount [ 

"This is  a test to check whether the count is equal to what are we specifying or not"

|c|
c := Counter new.
c count: 7.
self assert: c count equals: 7
]
