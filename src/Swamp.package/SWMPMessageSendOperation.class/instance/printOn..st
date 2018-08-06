accessing
printOn: aStream
	" result <- receiver perform: selector withArguments: {} "

	self resultVariable printOn: aStream.
	aStream nextPutAll: ' <- '.
	receiver printOn: aStream.
	aStream nextPutAll: ' perform: '.
	selector printOn: aStream.
	aStream nextPutAll: ' withArguments: '.
	arguments asArray asString printOn: aStream