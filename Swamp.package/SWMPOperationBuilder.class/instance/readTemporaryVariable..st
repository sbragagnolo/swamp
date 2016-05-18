as yet unclassified
readTemporaryVariable: aString
	^ SWMPTemporaryVariableReadOperation new
		temporaryVariableName: aString;
		yourself