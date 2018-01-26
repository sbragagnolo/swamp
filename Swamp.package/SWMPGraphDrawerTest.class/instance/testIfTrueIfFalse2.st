tests
testIfTrueIfFalse2
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: #ifTrueIfFalse2).
	methodGraph acceptVisitor: drawer.
	drawer open inspect