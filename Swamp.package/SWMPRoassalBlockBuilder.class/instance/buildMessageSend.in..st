building
buildMessageSend: aSWMPMessageSendOperation in: aParent
	| element |
	element := propertyBuilder elementOn: aSWMPMessageSendOperation.
	aParent add: element.
	^ element