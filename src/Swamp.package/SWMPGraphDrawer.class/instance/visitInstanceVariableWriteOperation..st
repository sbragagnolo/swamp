visiting
visitInstanceVariableWriteOperation: aSWMPVariableWriteOperation
	| element |
	visitedElements at: aSWMPVariableWriteOperation ifPresent: [ :x | ^ x ].
	element := builder buildInstanceVariableAssignation: aSWMPVariableWriteOperation in: stack first.
	
	visitedElements at: aSWMPVariableWriteOperation put: element.
	^ element