as yet unclassified
initialize
	super initialize.
	blockStack := OrderedCollection new.
	flowGraphStack := OrderedCollection new.
	returned := false