opening
open
	self assert: stack size = 1.
	stack first beAddedTo: builder view.
	^ builder buildFor: stack first