as yet unclassified
testInstanceVariableAssignment
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #assignToInstanceVariableAndReturnVariable).
	self assert: methodGraph startBlock operations size equals: 2.
	self assert: methodGraph startBlock operations first isInstanceVariableWrite.
	self assert: methodGraph startBlock operations second isInstanceVariableRead.
	

	self assert: methodGraph startBlock exits size equals: 1.
	self assert: methodGraph startBlock exits anyOne to equals: methodGraph returnBlock.
	self assert: methodGraph startBlock exits anyOne arguments first equals: methodGraph startBlock operations second resultVariable.
	