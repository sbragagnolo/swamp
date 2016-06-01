as yet unclassified
testAnnotateReturn1
	| methodGraph inputVariable returnVariable |
	methodGraph := graphbuilder
		createGraphFrom: (MessageSend receiver: test selector: #return1).
	methodGraph acceptVisitor: SWMPHighLevelAnnotator new.
	
	inputVariable := methodGraph startBlock exits anyOne arguments first.
	self assert: (inputVariable annotationAt: #type) isIntegerType.
	
	returnVariable := methodGraph returnBlock inputArguments first.
	self assert: (returnVariable annotationAt: #type) isIntegerType.