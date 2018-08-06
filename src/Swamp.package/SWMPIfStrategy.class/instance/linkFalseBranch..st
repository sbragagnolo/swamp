as yet unclassified
linkFalseBranch: aFlowGraph
	block createExitTo: aFlowGraph startBlock.
	aFlowGraph returnBlock createExitTo: self joinBlock.