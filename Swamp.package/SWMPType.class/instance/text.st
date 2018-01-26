accessing
text
	^ smalltalkClasses ifEmpty: [ 'unknown type' ] ifNotEmpty: [ 'implement type printing!' ]