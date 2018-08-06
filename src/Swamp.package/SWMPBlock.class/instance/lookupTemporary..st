convenience
lookupTemporary: aString
	^ temporaries detect: [ :t | t name = aString ] ifNone: [ nil ]