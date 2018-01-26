visiting
visitIfExitStrategy: aSWMPIfStrategy
	| var |
	var := aSWMPIfStrategy dependantVariable acceptVisitor: self.
	builder buildIfDependantOn: aSWMPIfStrategy in: stack first.
"	aSWMPIfStrategy joinBlock acceptVisitor: self"