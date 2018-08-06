visiting
visitBlock: aSWMPBlock
	| element |
	visitedElements at: aSWMPBlock ifPresent: [ :el | ^ el ].
	element := builder buildBlock: aSWMPBlock in: stack first.
	visitedElements at: aSWMPBlock put: element.
	stack push: element.
	self visitCollection: aSWMPBlock inputArguments.
	self visitCollection: aSWMPBlock temporaries.
	self visitCollection: aSWMPBlock operations.
	aSWMPBlock exitStrategy acceptVisitor: self.
	stack pop.
	aSWMPBlock exits do: [ :exit | exit acceptVisitor: self ].
	^ element