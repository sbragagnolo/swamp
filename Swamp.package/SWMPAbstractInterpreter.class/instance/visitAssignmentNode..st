as yet unclassified
visitAssignmentNode: aRBAssignmentNode
	| operation |
	operation := aRBAssignmentNode variable isInstance
		ifTrue: [ graphBuilder operationBuilder write: (self interpret: aRBAssignmentNode value) intoInstVariable: aRBAssignmentNode variable name from: self currentBlock selfVariable ]
		ifFalse: [ graphBuilder operationBuilder write: (self interpret: aRBAssignmentNode value) resultVariable intoTemporaryVariable: aRBAssignmentNode variable name ].
	self currentBlock addOperation: operation.
	^ operation