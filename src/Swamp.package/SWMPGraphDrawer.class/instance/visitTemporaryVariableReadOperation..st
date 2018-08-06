visiting
visitTemporaryVariableReadOperation: aSWMPTemporaryVariableReadOperation
	| element |
	visitedElements at: aSWMPTemporaryVariableReadOperation ifPresent: [ :x | ^ x ].
	element := builder buildTemporalVariableRead: aSWMPTemporaryVariableReadOperation in: stack first.
	visitedElements at: aSWMPTemporaryVariableReadOperation put: element.
	^ element