accessing
text
	^ smalltalkClasses
		ifEmpty: [ 'unknown type' ]
		ifNotEmpty: [ self assert: smalltalkClasses size = 1.
			smalltalkClasses anyOne name ]