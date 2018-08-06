as yet unclassified
visitTemporaryNode: aRBTemporaryNode
	| operation |
	operation := graphBuilder operationBuilder readTemporaryVariable: aRBTemporaryNode name.
	self currentBlock addOperation: operation.
	^ operation