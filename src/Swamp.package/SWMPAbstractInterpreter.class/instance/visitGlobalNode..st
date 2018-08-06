visiting
visitGlobalNode: aRBGlobalNode
	^ SWMPGlobalReadOperation new
		globalName: aRBGlobalNode name;
		yourself