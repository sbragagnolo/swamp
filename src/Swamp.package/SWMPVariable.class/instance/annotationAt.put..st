as yet unclassified
annotationAt: aString put: aSWMPType
	self assert: aString = #type.
	type := aSWMPType