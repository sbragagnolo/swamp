building
buildEntryPointFor: anEntry in: aContext
	| element |
	element := (circleBuilder elementOn: anEntry)
		extent: 5 @ 5;
		yourself.
	aContext add: element.
	self interaction setUpElement: element.
	^ element