as yet unclassified
ifTrue: aRBBlockNode ifFalse: aRBBlockNode2 withReceiver: aRBReceiverNode
	| receiver blockTrue blockFalse |
	receiver := self interpret: aRBReceiverNode.
	blockTrue := self interpret: aRBBlockNode.
	blockFalse := self interpret: aRBBlockNode2.
	
	SWMPIfStrategy new installOn: self currentBlock branchOn: receiver resultVariable ifTrue: blockTrue ifFalse: blockFalse
	