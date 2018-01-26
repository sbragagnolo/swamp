accessing
superVariable
	^ inputArguments detect: [ :v | v name = #super ]