as yet unclassified
initialize
	super initialize.
	inputArguments := OrderedCollection new.
	exits := OrderedCollection new.
	operations := OrderedCollection new.
	temporaries := OrderedCollection new. 
	self exitStrategy: SWMPSingleExitStrategy new.