as yet unclassified
printOn: aStream
	aStream
		nextPutAll: 'Block(';
		nextPutAll: inputArguments asArray asString;
		nextPutAll: ')'.
	operations
		do: [ :op | 
			aStream
				cr;
				tab.
			op printOn: aStream ]