building
buildVariable: aSWMPVariable in: aParent
	| element |
	element := propertyBuilder elementOn: aSWMPVariable.
	aParent add: element.
	^ element