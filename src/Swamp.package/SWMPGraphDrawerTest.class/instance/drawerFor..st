tests
drawerFor: aSelector
	| methodGraph |
	methodGraph := graphbuilder createGraphFrom: (MessageSend receiver: test selector: aSelector).
	methodGraph acceptVisitor: SWMPHighLevelAnnotator new.
	methodGraph acceptVisitor: drawer.
	^ drawer