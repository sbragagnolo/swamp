as yet unclassified
readInstVariable: aVariableName from: aSWMPVariable
	^ SWMPInstanceVariableReadOperation new
		instanceVariableName: aVariableName;
		owner: aSWMPVariable;
		yourself