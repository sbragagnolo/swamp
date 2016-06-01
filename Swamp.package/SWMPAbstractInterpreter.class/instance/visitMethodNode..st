as yet unclassified
visitMethodNode: aRBMethodNode
	| previousReturned |
	self pushNewFlowGraph.
	previousReturned := returned.
	returned := false.
	self interpret: aRBMethodNode body.
	
	returned ifFalse: [
		self visitReturnNode: (RBReturnNode value: (RBSelfNode named: #self)).
	].
	
	returned := previousReturned.
	^ self popFlowGraph