building
buildLinkFrom: aFrom to: aTo arguments: aSetOfTransmitedArgs into: aParent
	| element |
	
	element := SWMPRoassalLink new
		from: aFrom;
		to: aTo;
		arguments: aSetOfTransmitedArgs; 
		labeler: propertyBuilder.
		
	aParent add: element.
	^ element