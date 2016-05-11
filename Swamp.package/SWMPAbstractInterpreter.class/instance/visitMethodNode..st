as yet unclassified
visitMethodNode: aRBMethodNode
	currentFlowGraph := graphBuilder createMethodFlowGraph.
	self interpret: aRBMethodNode body.
	^ currentFlowGraph