"
# Description

- This is a temperature coverter class where we define all the methods related to the change of scales of temperature.
"
Class {
	#name : 'TemperatureConverter',
	#superclass : 'Object',
	#instVars : [
		'location',
		'measures'
	],
	#category : 'MyConverter-Base',
	#package : 'MyConverter',
	#tag : 'Base'
}

{ #category : 'initialization' }
TemperatureConverter >> initialize [ 

location := 'aLocation'.
measures := OrderedCollection new.
]

{ #category : 'accessing' }
TemperatureConverter >> location: aString [

location := aString.
]
