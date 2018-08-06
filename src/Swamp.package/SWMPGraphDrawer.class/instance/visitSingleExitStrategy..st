visiting
visitSingleExitStrategy: aSWMPSingleExitStrategy
	visitedElements at: aSWMPSingleExitStrategy ifPresent: [ :element | ^ element ].
	^ aSWMPSingleExitStrategy block acceptVisitor: self