accessing
variableNamed: aString
	^ inputArguments , temporaries detect: [ :var | var name = aString ] ifNone: [ self error: 'There is no variable named ' , aString ]