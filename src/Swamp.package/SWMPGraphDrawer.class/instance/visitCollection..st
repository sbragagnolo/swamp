visiting
visitCollection: aCollection
	^ aCollection do: [ :each | each acceptVisitor: self ]