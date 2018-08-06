tests
testSuperTypeIsObject
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #return1Plus2).
	self assert: (methodGraph startBlock inputArguments detect: [ :v | v name = #super ]) type smalltalkClasses size equals: 1.
	self assert: (methodGraph startBlock inputArguments detect: [ :v | v name = #super ]) type smalltalkClasses anyOne equals: Object