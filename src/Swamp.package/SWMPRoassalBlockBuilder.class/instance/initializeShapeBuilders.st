initialization
initializeShapeBuilders
	
	( titleBuilder:= RTShapeBuilder new) label
		height: self titleFontSize;
		text: [ :c | c text ].
	( blockBuilder:= RTShapeBuilder new) label
		height: self blockFontSize;
		text: [ :c | c text ].
	( propertyBuilder:= RTShapeBuilder new) label
		height: self propertyFontSize;
		text: [ :c | c text ].
	( boxBuilder:= RTShapeBuilder new) box
		color: Color white;
		borderColor: Color gray.
	( circleBuilder:= RTShapeBuilder new) circle
		color: Color black;
		borderColor: Color black.
	( lineShape:= RTShapeBuilder new) orthoVerticalLine
