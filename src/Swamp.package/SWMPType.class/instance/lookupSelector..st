lookup
lookupSelector: aString
	self flag: #imCrying.
	self assert: smalltalkClasses size = 1.
	^ smalltalkClasses anyOne lookupSelector: aString