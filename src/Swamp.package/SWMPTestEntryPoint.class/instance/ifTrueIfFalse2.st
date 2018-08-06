as yet unclassified
ifTrueIfFalse2
	| temporaryVar |
	instanceVariable := 1.
	instanceVariable == 1
		ifTrue: [ temporaryVar := 1 ]
		ifFalse: [ temporaryVar := 2 ].
	^ temporaryVar