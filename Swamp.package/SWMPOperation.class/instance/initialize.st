initialization
initialize
	super initialize.
	resultVariable := SWMPVariable new
		name: (SWMPVariableNames value nextNameFor: self class);
		yourself