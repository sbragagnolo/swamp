visiting
visitConstant: aSWMPConstant
	visitedElements at: aSWMPConstant ifPresent: [ :element | ^ element ].
	^ builder buildConstant: aSWMPConstant in: stack first.
	