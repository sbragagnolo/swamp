as yet unclassified
createExitTo: aSWMPBlock
	exits
		add:
			(SWMPLink new
				from: self;
				to: aSWMPBlock;
				arguments: {};
				yourself)