as yet unclassified
lookupArgument: aName
	stack first isSWMPBlock
		ifTrue: [ ^ stack first lookupArgument: aName ].
	self halt.
	^ nil