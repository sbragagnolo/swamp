as yet unclassified
visitAssignmentNode: aRBAssignmentNode
	| operation |
	operation := graphBuilder operationBuilder assign: (self interpret: aRBAssignmentNode value) resultVariable to: (self variableFor: aRBAssignmentNode variable).
	currentFlowGraph startBlock addOperation: operation.
	^ operation