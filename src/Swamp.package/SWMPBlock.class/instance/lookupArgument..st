convenience
lookupArgument: aString
	^ inputArguments detect: [ :t | t name = aString ] ifNone: [ nil ]