as yet unclassified
visitInstanceVariableNode: aRBInstanceVariableNode
	| operation |
	operation := graphBuilder operationBuilder readInstVariable: aRBInstanceVariableNode name from: self currentBlock selfVariable.
	self currentBlock addOperation: operation.
	^ operation