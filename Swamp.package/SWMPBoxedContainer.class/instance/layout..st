accessing
layout: aLayout
	| r p |
	self subgroups do: [ :g | g layout: aLayout ].
	r := self encompassingRectangle.
	p := 0.
	RTVerticalLineLayout new gapSize: 0.50; on: self labels.
	aLayout on: (self elements reject: #isEdge).
	RTVerticalLineLayout new gapSize: 0.50; on: self labels.
	self interaction setUpElement: box.
	RTNest new on: box nest: self elements