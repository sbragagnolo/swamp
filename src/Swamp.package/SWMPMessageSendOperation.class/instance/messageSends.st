convenience
messageSends
	receiver type smalltalkClasses size = 1
		ifFalse: [ ^ {} ].
	(arguments allSatisfy: [ :a | a type smalltalkClasses size = 1 ])
		ifFalse: [ ^ {} ].
	^ {(MessageSend new
		receiver: receiver value;
		selector: selector;
		arguments: (arguments collect: #value);
		yourself)}