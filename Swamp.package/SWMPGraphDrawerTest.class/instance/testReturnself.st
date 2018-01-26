tests
testReturnself
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #returnSelf).
	methodGraph acceptVisitor: drawer.
	drawer open inspect