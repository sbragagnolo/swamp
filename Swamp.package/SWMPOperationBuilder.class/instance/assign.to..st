as yet unclassified
assign: aSWMPValue to: aSWMPVariable
	^ SWMPAssignmentOperation new
		variable: aSWMPVariable;
		value: aSWMPValue;
		yourself