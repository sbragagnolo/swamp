as yet unclassified
linkTrueBranch: aFlowGraph
	block createExitTo: aFlowGraph startBlock.
	aFlowGraph returnBlock createExitTo: self joinBlock.