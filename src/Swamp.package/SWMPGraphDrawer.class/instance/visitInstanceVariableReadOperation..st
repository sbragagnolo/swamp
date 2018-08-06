visiting
visitInstanceVariableReadOperation: aSWMPVariableReadOperation
	| element |
	visitedElements at: aSWMPVariableReadOperation ifPresent: [ :x | ^ x ].
	element := builder buildInstanceVariableRead: aSWMPVariableReadOperation in: stack first.
	visitedElements at: aSWMPVariableReadOperation put: element.
	^ element