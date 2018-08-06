visiting
visitVariable: aSWMPVariable
	| element |
	visitedElements at: aSWMPVariable ifPresent: [ :el | ^ el ].
	element := builder buildVariable: aSWMPVariable in: stack first.
	visitedElements at: aSWMPVariable put: element.
	^ element