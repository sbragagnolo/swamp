as yet unclassified
testIfTrueIfFalse
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #ifTrueIfFalse).
	self assert: methodGraph startBlock exits size equals: 2.
	self assert: methodGraph startBlock exitStrategy isIfStrategy.
	self assert: methodGraph startBlock exits first to exits first to equals: methodGraph startBlock exits second to exits first to