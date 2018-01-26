accessing
layout: aLayout
	| r p |
	self subgroups do: [ :g | g layout: aLayout ].
	r := self encompassingRectangle.
	p := 0.
	RTVerticalLineLayout new gapSize: 0.50; on: self labels.
	aLayout on: (self elements reject: #isEdge).
	RTVerticalLineLayout new gapSize: 0.50; on: self labels.
	"self elements
		do: [ :g | 
			g shape isLabel
				ifTrue: [ g trachelShape translateTo: r origin x + 10 @ r origin y + p.
					p := p + 10 ] ]."
	self interaction setUpElement: box.
	RTNest new on: box nest: self elements