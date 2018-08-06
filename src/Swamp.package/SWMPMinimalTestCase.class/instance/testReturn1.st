as yet unclassified
testReturn1
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #return1).
	self assert: methodGraph startBlock operations size equals: 0.
	self assert: methodGraph returnBlock inputArguments size equals: 1.
	self assert: methodGraph startBlock exits size equals: 1.
	self assert: methodGraph startBlock exits anyOne to equals: methodGraph returnBlock.
	self assert: methodGraph startBlock exits anyOne arguments first value equals: 1.

	