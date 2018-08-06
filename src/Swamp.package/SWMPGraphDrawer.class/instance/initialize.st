initialization
initialize
	super initialize.
	visitedElements := Dictionary new.
	stack := Stack new.
	builder := SWMPRoassalBlockBuilder new.
	stack push: RTGroup new