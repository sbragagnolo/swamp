initialization
nextNameFor: aClass
	| name | 
	name := aClass name, current asString.
	current := current + 1.
	^ name 