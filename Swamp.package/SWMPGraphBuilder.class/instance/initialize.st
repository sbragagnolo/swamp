as yet unclassified
initialize
	super initialize.
	abstractInterpreter := SWMPAbstractInterpreter new
		graphBuilder: self;
		yourself