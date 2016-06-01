as yet unclassified
visitBlockNode: aRBMethodNode
	| previousReturned returnedValue |
	self pushNewFlowGraph.
	previousReturned := returned.
	returned := false.
	returnedValue := self interpret: aRBMethodNode body.
	
	returned ifFalse: [
		| toTransmit |
		toTransmit := returnedValue resultVariable.
		self currentBlock createExitTo: self currentReturn with: toTransmit.
	].
	
	returned := previousReturned.
	^ self popFlowGraph