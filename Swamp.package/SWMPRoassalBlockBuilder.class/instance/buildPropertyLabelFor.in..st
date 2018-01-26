building
buildPropertyLabelFor: aSWMPNode in: aParent 
	| element |
	element := ( propertyBuilder elementOn: aSWMPNode ).
	aParent add: element. 
	^ element 