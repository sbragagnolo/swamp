as yet unclassified
createExitTo: aSWMPBlock with: aSWMPVariable
	exits
		add:
			(SWMPLink new
				from: self;
				to: aSWMPBlock;
				arguments: {aSWMPVariable};
				yourself)