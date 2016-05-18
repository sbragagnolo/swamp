as yet unclassified
visitMethodNode: aRBMethodNode
	currentFlowGraph := graphBuilder createMethodFlowGraph.
	self pushBlock: currentFlowGraph startBlock.
	self interpret: aRBMethodNode body.
	^ currentFlowGraph