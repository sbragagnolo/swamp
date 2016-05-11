as yet unclassified
testReturn1
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #return1).
	self assert: methodGraph startBlock operations size equals: 1.
	self assert: methodGraph returnBlock inputArguments size equals: 1.
	self assert: methodGraph startBlock exits size equals: 1.
	self assert: methodGraph startBlock exits anyOne equals: methodGraph returnBlock.
	self assert: methodGraph startBlock operations anyOne variable equals: methodGraph returnBlock inputArguments anyOne.
	self assert: methodGraph startBlock operations anyOne value value equals: 1