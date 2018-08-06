visiting
visitArgumentNode: aRBArgumentNode
	| operation |
	self currentFlowGraph startBlock addInputArgumentNamed: aRBArgumentNode name.
	operation := graphBuilder operationBuilder readArgument: aRBArgumentNode name.
	self currentBlock addOperation: operation.
	^ operation