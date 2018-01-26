convenience
self
	^ startBlock inputArguments detect: [ :v | v name = #self ]