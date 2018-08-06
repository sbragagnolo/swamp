as yet unclassified
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(from=';
		nextPutAll: from asString;
		nextPutAll: ' ';
		nextPutAll: 'to=';
		nextPutAll: to asString;
		nextPutAll: ')'.		