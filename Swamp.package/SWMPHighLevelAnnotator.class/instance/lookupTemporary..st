as yet unclassified
lookupTemporary: aName
	stack first isSWMPBlock
		ifTrue: [ ^ stack first lookupTemporary: aName ].
	^ nil