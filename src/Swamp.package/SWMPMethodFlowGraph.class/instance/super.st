convenience
super
	^ startBlock inputArguments detect: [ :v | v name = #super ]