visiting
visitTemporaryVariableWriteOperation: aSWMPTemporaryVariableWriteOperation
	| element |
	visitedElements at: aSWMPTemporaryVariableWriteOperation ifPresent: [ :x | ^ x ].
	element := builder buildTemporalVariableAssignation: aSWMPTemporaryVariableWriteOperation in: stack first.
	visitedElements at: aSWMPTemporaryVariableWriteOperation put: element.
	^ element