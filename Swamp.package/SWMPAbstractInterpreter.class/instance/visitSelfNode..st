as yet unclassified
visitSelfNode: aRBSelfNode
	" this code was. self currentBlock selfVariable "
	self flag: #DoesThisChangeMakeSense.
	^ self currentFlowGraph self