as yet unclassified
write: aValue intoTemporaryVariable: aVariableName
	^ SWMPTemporaryVariableWriteOperation new
		temporaryVariableName: aVariableName;
		value: aValue;
		yourself