as yet unclassified
joinBlock
	^ joinBlock
		ifNil: [ joinBlock := SWMPBlock new.
			joinBlock addInputArgumentNamed: #return.
			joinBlock ]