visiting
visitMessageSendOperation: aSWMPMessageSendOperation
	| methods |
	methods := aSWMPMessageSendOperation messageSends
		collect: [ :s | SWMPGraphBuilder new createGraphFrom: s ].
	methods
		do: [ :m | 
			m acceptVisitor: SWMPHighLevelAnnotator new.
			aSWMPMessageSendOperation resultVariable type + m return type ]