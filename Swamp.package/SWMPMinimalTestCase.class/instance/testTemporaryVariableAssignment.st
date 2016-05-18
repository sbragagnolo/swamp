as yet unclassified
testTemporaryVariableAssignment
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #assignToTemporaryVariableAndReturnVariable).
	self assert: methodGraph startBlock operations size equals: 1.
	self assert: methodGraph startBlock temporaries size equals: 1.
	self assert: methodGraph returnBlock inputArguments size equals: 1.
	self assert: methodGraph startBlock exits size equals: 1.
	self assert: methodGraph startBlock exits anyOne to equals: methodGraph returnBlock.
	self assert: methodGraph startBlock operations first variable equals: methodGraph startBlock temporaries first.
	self assert: methodGraph startBlock operations first value value equals: 2