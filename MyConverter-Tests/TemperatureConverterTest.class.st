"
# Description

- This is a test suite for the package MyConverter and it's respective classes


"
Class {
	#name : 'TemperatureConverterTest',
	#superclass : 'TestCase',
	#category : 'MyConverter-Tests',
	#package : 'MyConverter-Tests'
}

{ #category : 'tests' }
TemperatureConverterTest >> testCelsiusToFahrenheit [

|c|
c := TemperatureConverter new.

self assert: (c convertCelcius: 30) equals: 86.0.
]

{ #category : 'tests' }
TemperatureConverterTest >> testFToCScale [  

"Test for the MyConverter << convertFahrenheitFrom: to: by: "

"|c conv results assertion|
 c := TemperatureConverter new.
assertion := true.
conv := c convertFarhenheitFrom: 50 to: 70  by: 2.
results := #(10.0 11.1 12.2 13.3 14.4 15.6 16.7 17.8 18.9 20.0 21.1).

conv with: results do:[:convertedValue :resultingValue |
	((convertedValue value) closeTo: resultingValue) ifFalse: [ self assert:false ]
	].

self assert: true.
"

| converter results expectedCelsius |
converter := TemperatureConverter new.
results := (converter convertFahrenheitFrom: 50 to: 70 by: 2).
expectedCelsius := #(10.0 11.1 12.2 13.3 14.4 15.5 16.6 17.7 18.8
20.0 21.1).
results with: expectedCelsius
do: [ :res :cel | res value closeTo: cel ]
 
]

{ #category : 'tests' }
TemperatureConverterTest >> testFahrenheitToCelcius [
	
"test to check for the conversion of the farhenheit to celcius"

|c|
c := TemperatureConverter new.

self assert: (c convertFahrenheit: 86.0) equals: 30.
]

{ #category : 'tests' }
TemperatureConverterTest >> testLocationAndDate [

| office |
office := TemperatureConverter new location: 'Office'.
"perform two measures that are logged"
office measureCelsius: 19.
office measureCelsius: 21.

"We logged the correct temperature"
self assert: office temperatures equals: { 19 . 21 } asOrderedCollection.
]
