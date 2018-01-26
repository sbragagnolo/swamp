visiting
insertExitPointFrom: aSWMPBlock
	| exitPoint |
	exitPoint := SWMPExitPoint new.
	(SWMPLink new
		from: aSWMPBlock;
		to: exitPoint;
		arguments: #() yourself) acceptVisitor: self.
	^ exitPoint