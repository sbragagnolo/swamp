as yet unclassified
interpretMessageSend: aMessageSend
	| method |
	method := aMessageSend receiver class lookupSelector: aMessageSend selector.
	method
		ifNil: [ self
				error:
					('{1} does not understand {2}'
						format:
							{aMessageSend receiver asString.
							aMessageSend selector}) ].
	^ self interpret: method ast