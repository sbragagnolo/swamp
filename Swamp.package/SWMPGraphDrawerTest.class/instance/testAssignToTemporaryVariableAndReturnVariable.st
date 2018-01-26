tests
testAssignToTemporaryVariableAndReturnVariable
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #assignToTemporaryVariableAndReturnVariable).
	methodGraph acceptVisitor: drawer.
	drawer open inspect