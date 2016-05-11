as yet unclassified
printOn: aStream
	aStream
		nextPutAll: variable name;
		nextPutAll: ' <- ';
		nextPutAll: value asString