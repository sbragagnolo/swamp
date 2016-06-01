as yet unclassified
visitSequenceNode: aRBSequenceNode
	| lastResult |
	aRBSequenceNode temporaries do: [ :t | self currentBlock addTemporaryVariableNamed: t name ].
	aRBSequenceNode statements collect: [ :each | 
		lastResult := self interpret: each ].
	^ lastResult