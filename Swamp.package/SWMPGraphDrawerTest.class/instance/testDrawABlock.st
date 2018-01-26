tests
testDrawABlock
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #return1).
	methodGraph returnBlock acceptVisitor: drawer.
	drawer open inspect