tests
testAssignToInstanceVariableAndReturnVariable
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #assignToInstanceVariableAndReturnVariable).
	methodGraph acceptVisitor: drawer.
	drawer open inspect