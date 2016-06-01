as yet unclassified
pushNewFlowGraph
	flowGraphStack addLast: graphBuilder createMethodFlowGraph.
	self pushBlock: self currentFlowGraph startBlock.
	^ self currentFlowGraph