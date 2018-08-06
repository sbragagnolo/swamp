building
buildExitPointFor: aSWMPExitPoint in: aContext
	| outerCircle |
	outerCircle := (circleBuilder elementOn: aSWMPExitPoint)
		extent: 10 @ 10;
		color: Color white;
		yourself.
	aContext add: outerCircle.
	self interaction setUpElement: outerCircle.
	^ outerCircle