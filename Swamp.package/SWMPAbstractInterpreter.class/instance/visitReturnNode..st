as yet unclassified
visitReturnNode: aRBReturnNode
	| toTransmit |
	toTransmit := (self interpret: aRBReturnNode value) resultVariable.
	self currentBlock createExitTo: self currentReturn with: toTransmit.
	returned := true.
	^ toTransmit