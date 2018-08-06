as yet unclassified
pushNewFlowGraph
	| flow |
	flow := graphBuilder createMethodFlowGraph.
	flowGraphStack addLast: flow.
	self pushBlock: self currentFlowGraph startBlock.
	^ self currentFlowGraph