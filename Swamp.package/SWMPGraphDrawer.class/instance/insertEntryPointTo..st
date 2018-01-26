visiting
insertEntryPointTo: aSWMPBlock
	| entryPoint |
	entryPoint := SWMPEntryPoint new.
	^ builder
		buildLinkFrom: (entryPoint acceptVisitor: self)
		to: (aSWMPBlock acceptVisitor: self)
		arguments: #()
		into: stack first