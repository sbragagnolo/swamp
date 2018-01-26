visiting
visitMessageSendOperation: aSWMPMessageSendOperation
	| msgSend |
	visitedElements at: aSWMPMessageSendOperation ifPresent: [ :element | ^ element ].
	msgSend := builder buildMessageSend: aSWMPMessageSendOperation in: stack first.
	visitedElements at: aSWMPMessageSendOperation put: msgSend.
	^ msgSend