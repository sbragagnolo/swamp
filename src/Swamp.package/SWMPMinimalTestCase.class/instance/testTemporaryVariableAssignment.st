as yet unclassified
testTemporaryVariableAssignment
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #assignToTemporaryVariableAndReturnVariable).

	
	self assert: methodGraph startBlock operations size equals: 2.
	self assert: methodGraph startBlock operations first isTemporaryVariableWrite.
	self deny: methodGraph startBlock operations first isInstanceVariableWrite.
	self assert: methodGraph startBlock operations second isTemporaryVariableRead.
	
	
	self assert: methodGraph startBlock exits size equals: 1.
	self assert: methodGraph startBlock exits anyOne to equals: methodGraph returnBlock.
	self assert: methodGraph startBlock exits anyOne arguments first equals: methodGraph startBlock operations second resultVariable.
	