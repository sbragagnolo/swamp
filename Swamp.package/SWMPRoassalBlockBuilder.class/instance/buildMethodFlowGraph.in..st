building
buildMethodFlowGraph: aSWMPMethodFlowGraph in: aParent
	| group |
	group := SWMPBoxedContainer new.
	group interaction: self interaction.
	group box: (boxBuilder elementOn: aSWMPMethodFlowGraph).
	group add: (titleBuilder elementOn: aSWMPMethodFlowGraph).
	aParent add: group.
	^ group