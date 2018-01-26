tests
testReturn1
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #return1).
	methodGraph acceptVisitor: drawer.
	drawer open inspect