as yet unclassified
isIntegerType
	^ smalltalkClasses allSatisfy: [ :class | class inheritsFrom: Integer ]