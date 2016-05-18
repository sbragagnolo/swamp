as yet unclassified
write: aValue intoInstVariable: aVariableName from: aSWMPVariable
	^ SWMPInstanceVariableWriteOperation new
		value: aValue;
		instanceVariableName: aVariableName;
		owner: aSWMPVariable;
		yourself