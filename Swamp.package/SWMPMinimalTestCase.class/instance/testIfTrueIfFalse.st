tests
testIfTrueIfFalse
	| methodGraph trueBlock falseBlock |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #ifTrueIfFalse).
	self assert: methodGraph startBlock exits size equals: 2.
	self assert: methodGraph startBlock exitStrategy isIfStrategy.
	
	trueBlock := methodGraph startBlock exits first to.
	falseBlock := methodGraph startBlock exits second to.
	trueBlock inspect.
	self assert: trueBlock exits size equals: 1.
	self assert: falseBlock exits size equals: 1.
	self
		assert: trueBlock nextBlock nextBlock
		equals: falseBlock nextBlock nextBlock.
		
	self
		assert: trueBlock nextBlock nextBlock nextBlock
		equals: methodGraph returnBlock.