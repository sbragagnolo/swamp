visiting
visitArgumentReadOperation: aSWMPArgumentReadOperation 
	| element |
	visitedElements at: aSWMPArgumentReadOperation ifPresent: [ :x | ^ x ].
	element := builder buildArgumentRead: aSWMPArgumentReadOperation in: stack first.
	visitedElements at: aSWMPArgumentReadOperation put: element.
	^ element