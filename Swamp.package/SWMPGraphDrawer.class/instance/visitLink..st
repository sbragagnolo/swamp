visiting
visitLink: aSWMPLink
	| element |
	visitedElements at: aSWMPLink ifPresent: [ :el | ^ el ].
	element := builder
		buildLinkFrom: (aSWMPLink from acceptVisitor: self)
		to: (aSWMPLink to acceptVisitor: self)
		arguments: (aSWMPLink arguments collect: [ :a | a acceptVisitor: self ])
		into: stack first.
	visitedElements at: aSWMPLink put: element.
	^ element