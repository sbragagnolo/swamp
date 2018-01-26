tests
testIfTrueIfFalse
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #ifTrueIfFalse).
	methodGraph acceptVisitor: drawer.
	drawer open inspect