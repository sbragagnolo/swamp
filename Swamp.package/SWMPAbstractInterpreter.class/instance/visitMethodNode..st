as yet unclassified
visitMethodNode: aRBMethodNode
	| previousReturned |
	self pushNewFlowGraph.
	self currentFlowGraph selector: aRBMethodNode method selector asSymbol.
	self currentFlowGraph self type addSmalltalkClass: aRBMethodNode methodClass.
	self currentFlowGraph super type addSmalltalkClass: aRBMethodNode methodClass superclass.
	previousReturned := returned.
	returned := false.
	self interpret: aRBMethodNode body.
	returned
		ifFalse: [ self visitReturnNode: (RBReturnNode value: (RBSelfNode named: #self)) ].
	returned := previousReturned.
	^ self popFlowGraph