as yet unclassified
testReturn1Plus2
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #return1Plus2).
	self assert: methodGraph startBlock operations size equals: 1.
	self assert: methodGraph returnBlock inputArguments size equals: 1.
	self assert: methodGraph startBlock exits size equals: 1.
	self assert: methodGraph startBlock exits anyOne to equals: methodGraph returnBlock.
	self assert: methodGraph startBlock operations first resultVariable equals: methodGraph startBlock exits first arguments first.

