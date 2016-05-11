as yet unclassified
testReturn2
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #return1Plus2).
	self assert: methodGraph startBlock operations size equals: 2.
	self assert: methodGraph returnBlock inputArguments size equals: 1.
	self assert: methodGraph startBlock exits size equals: 1.
	self assert: methodGraph startBlock exits anyOne equals: methodGraph returnBlock.
	self assert: methodGraph startBlock operations last resultVariable equals: methodGraph returnBlock inputArguments anyOne.
	" Viva el cambio "