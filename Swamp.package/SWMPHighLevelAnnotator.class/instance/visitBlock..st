as yet unclassified
visitBlock: aSWMPBlock 
	aSWMPBlock operations do: [ : op  |  op acceptVisitor: self ].
	aSWMPBlock exits do: [ : exit |  exit acceptVisitor: self  ].