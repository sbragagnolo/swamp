accessing
label
	^ label
		ifNil: [ label := labeler elementOn: self.
			TRConstraint stick: label between: self edge from and: self edge to.
			label ]