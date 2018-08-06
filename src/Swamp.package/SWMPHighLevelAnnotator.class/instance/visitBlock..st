as yet unclassified
visitBlock: aSWMPBlock 
	self push: aSWMPBlock.
	aSWMPBlock operations do: [ : op  |  op acceptVisitor: self ].
	"aSWMPBlock exits do: [ : exit |  exit acceptVisitor: self  ]."
	self pop.