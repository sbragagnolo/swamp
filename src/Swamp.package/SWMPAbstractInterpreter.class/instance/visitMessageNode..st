as yet unclassified
visitMessageNode: aRBMessageNode
	| receiver arguments operation |
	aRBMessageNode isInlined
		ifTrue: [ ^ self perform: (aRBMessageNode selector , 'withReceiver:') asSymbol withArguments: (aRBMessageNode arguments , {aRBMessageNode receiver}) asArray ].
	receiver := self interpret: aRBMessageNode receiver.
	arguments := aRBMessageNode arguments collect: [ :each | (self interpret: each) resultVariable ].
	operation := graphBuilder operationBuilder send: aRBMessageNode selector to: receiver resultVariable withArguments: arguments.
	self currentBlock addOperation: operation.
	^ operation