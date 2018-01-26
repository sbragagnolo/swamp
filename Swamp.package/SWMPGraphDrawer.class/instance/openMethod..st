opening
openMethod: aSWMPMessageSendOperation
	| method graph |
	method := aSWMPMessageSendOperation openMethod.
	graph := SWMPGraphBuilder new interpret: method ast.
	graph acceptVisitor: SWMPHighLevelAnnotator new.
	^ graph