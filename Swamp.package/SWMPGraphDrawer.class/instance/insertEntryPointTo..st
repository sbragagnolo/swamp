visiting
insertEntryPointTo: aSWMPBlock
	| entryPoint |
	entryPoint := SWMPEntryPoint new.
	(SWMPLink new
		from: entryPoint;
		to: aSWMPBlock;
		arguments: #() yourself) acceptVisitor: self.
	^ entryPoint