as yet unclassified
ifTrue: aRBBlockNode ifFalse: aRBBlockNode2 withReceiver: aRBReceiverNode
	| receiver flowGraphTrue flowGraphFalse branchBlock |
	receiver := self interpret: aRBReceiverNode.
	flowGraphTrue := self interpret: aRBBlockNode.
	flowGraphFalse := self interpret: aRBBlockNode2.
	
	branchBlock := self popCurrentBlock.
	branchBlock exitStrategy: SWMPIfStrategy new.
	branchBlock exitStrategy dependantVariable: receiver resultVariable.
	branchBlock exitStrategy linkTrueBranch: flowGraphTrue.
	branchBlock exitStrategy linkFalseBranch: flowGraphFalse.

	self assert: branchBlock exits size = 2.	
	self pushBlock: branchBlock exitStrategy joinBlock.
	self assert: self currentBlock exits size = 0.
	
	^ self currentBlock inputArguments first