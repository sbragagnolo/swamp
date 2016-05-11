as yet unclassified
visitReturnNode: aRBReturnNode
	| operation |
	operation := graphBuilder operationBuilder
		assign: (self interpret: aRBReturnNode value) resultVariable
		to: currentFlowGraph returnVariable.
	currentFlowGraph startBlock addOperation: operation.
	^ operation