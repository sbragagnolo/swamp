visiting
visitMethodFlowGraph: aSWMPMethodFlowGraph
	| element |
	visitedElements at: aSWMPMethodFlowGraph ifPresent: [ :el | ^ el ].
	element := builder buildMethodFlowGraph: aSWMPMethodFlowGraph in: stack first.
	visitedElements at: aSWMPMethodFlowGraph put: element.
	stack push: element.
	aSWMPMethodFlowGraph startBlock acceptVisitor: self.
	aSWMPMethodFlowGraph returnBlock acceptVisitor: self.
	self insertEntryPointTo: aSWMPMethodFlowGraph startBlock.
	self insertExitPointFrom: aSWMPMethodFlowGraph returnBlock.
	stack pop.
	^ element