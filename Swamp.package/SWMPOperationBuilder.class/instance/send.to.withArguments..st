as yet unclassified
send: aSelector to: aSWMPConstant withArguments: aCollectionOfArgument
	^ SWMPMessageSendOperation new
		selector: aSelector;
		receiver: aSWMPConstant;
		arguments: aCollectionOfArgument;
		yourself