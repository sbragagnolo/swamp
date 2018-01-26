tests
testReturn1Plus2
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #return1Plus2).
	methodGraph acceptVisitor: drawer.
	drawer open inspect