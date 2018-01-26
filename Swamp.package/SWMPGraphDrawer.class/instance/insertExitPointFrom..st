visiting
insertExitPointFrom: aSWMPBlock
	| exitPoint |
	exitPoint := SWMPExitPoint new.
	^ builder
		buildLinkFrom: (aSWMPBlock acceptVisitor: self)
		to: (exitPoint acceptVisitor: self)
		arguments: #()
		into: stack first