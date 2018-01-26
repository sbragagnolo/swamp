public
buildFor: aGroup
	self applyLayout.
	aGroup beAddedTo: view.
	aGroup do: [ :g | g layout: RTTreeLayout new ].
	^ view