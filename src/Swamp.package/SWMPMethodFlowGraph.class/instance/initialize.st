as yet unclassified
initialize
	super initialize.
	startBlock := SWMPBlock new.
	returnBlock := SWMPBlock new.
	exceptionBlock := SWMPBlock new.
	returnBlock addInputArgumentNamed: #return.
	startBlock addInputArgumentNamed: #self.
	startBlock addInputArgumentNamed: #super