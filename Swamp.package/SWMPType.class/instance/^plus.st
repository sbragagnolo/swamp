as yet unclassified
+ aSWMPType
	^ self class new
		addSmalltalkClasses: smalltalkClasses;
		addSmalltalkClasses: aSWMPType smalltalkClasses;
		yourself