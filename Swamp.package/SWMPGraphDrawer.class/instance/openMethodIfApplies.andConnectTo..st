visiting
openMethodIfApplies: aSWMPMessageSendOperation andConnectTo: aRTElement
	| method inner |

	aSWMPMessageSendOperation selector = #primitiveFailed
		ifTrue: [ ^ self ].
	inner := self spanwInnerDrawer.
	method := self openMethod: aSWMPMessageSendOperation.
	method acceptVisitor: inner.
	stack last addAll: inner stack first.
	(SWMPRoassalLink new
		from: aSWMPMessageSendOperation;
		to: method;
		arguments: aSWMPMessageSendOperation arguments;
		yourself) acceptVisitor: self