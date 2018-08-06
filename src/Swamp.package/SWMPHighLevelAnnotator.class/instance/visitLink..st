as yet unclassified
visitLink: aSWMPLink
	aSWMPLink arguments
		with: aSWMPLink to inputArguments
		do: [ :argument :parameter | 
			| joinedType |
			joinedType := (parameter annotationAt: #type) + (argument annotationAt: #type).
			parameter annotationAt: #type put: joinedType ]