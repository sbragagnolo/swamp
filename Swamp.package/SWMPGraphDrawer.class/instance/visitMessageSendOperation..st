visiting
visitMessageSendOperation: aSWMPMessageSendOperation
	| msgSend method |
	visitedElements at: aSWMPMessageSendOperation ifPresent: [ :element | ^ element ].
	msgSend := builder buildMessageSend: aSWMPMessageSendOperation in: stack first.
	visitedElements at: aSWMPMessageSendOperation put: msgSend.
	
	self openMethodIfApplies: aSWMPMessageSendOperation andConnectTo: msgSend.
	
	^ msgSend