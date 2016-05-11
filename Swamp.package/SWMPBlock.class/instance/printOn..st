as yet unclassified
printOn: aStream
	aStream
		nextPutAll: 'Block(';
		nextPutAll: inputArguments asString;
		nextPutAll: ')'.
	operations
		do: [ :op | 
			aStream
				cr;
				tab.
			op printOn: aStream ]