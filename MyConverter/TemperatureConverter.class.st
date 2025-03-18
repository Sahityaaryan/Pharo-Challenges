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

{ #category : 'helpers' }
TemperatureConverter >> convertCelcius: anInteger [

"Convert an Integer from Celsius to Fahrenheit"
^((anInteger * 1.8) + 32).
]

{ #category : 'helpers' }
TemperatureConverter >> convertFahrenheit: aFloat [

"convert a Fahrenheit temperature to its respective celsius scale value"

^((aFloat - 32)/1.8)
]

{ #category : 'helpers' }
TemperatureConverter >> convertFahrenheitFrom: startInteger to: endInteger by: anInteger [

"It provides a collection having pair of the clecius value as the key and farhenheit value as the value"

|ind conv|
	ind := startInteger.
	
"	Transcript show: ind;cr."
conv := OrderedCollection new.

[ind <= endInteger] whileTrue: [ 
		"Transcript show: ind;cr."
	conv add:(ind -> (self convertFahrenheit: ind )). 
	ind := ind + anInteger .
	 ].
^conv.

"^(startInteger to: endInteger by: anInteger ) collect:[:f | f -> (self convertFarhenheit: f)] ."
]

{ #category : 'initialization' }
TemperatureConverter >> initialize [ 

location := 'aLocation'.
measures := OrderedCollection new.
]

{ #category : 'accessing' }
TemperatureConverter >> location: aString [

location := aString.
]

{ #category : 'helpers' }
TemperatureConverter >> measureCelsius: anInteger [

"It will log the date and time as well as the temperature provided in celsisus"

measures add: DateAndTime now -> anInteger. 
]

{ #category : 'helpers' }
TemperatureConverter >> measureCount [

"It returns the size of the measures collection"

^measures size.
]

{ #category : 'helpers' }
TemperatureConverter >> temperatures [

"It will give a collection having list of all the logged temperatures in their respective scales"

^measures collect:[:each | each value].
]
