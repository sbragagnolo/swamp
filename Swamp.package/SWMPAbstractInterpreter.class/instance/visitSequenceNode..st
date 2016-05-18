as yet unclassified
visitSequenceNode: aRBSequenceNode
	aRBSequenceNode temporaries do: [ :t | self currentBlock addTemporaryVariableNamed: t name ].
	^ aRBSequenceNode statements collect: [ :each | self interpret: each ]