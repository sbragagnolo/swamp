as yet unclassified
testReturnSelf
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #returnSelf).
	self assert: methodGraph startBlock inputArguments size equals: 2.
	self assert: methodGraph startBlock inputArguments first name equals: #self.
	self assert: methodGraph startBlock operations size equals: 0.
	self assert: methodGraph returnBlock inputArguments size equals: 1.
	self assert: methodGraph startBlock exits size equals: 1.
	self assert: methodGraph startBlock exits first arguments first equals: methodGraph startBlock inputArguments first.
	
	