as yet unclassified
visitSequenceNode: aRBSequenceNode
	^ aRBSequenceNode statements collect: [ :each | self interpret: each ]