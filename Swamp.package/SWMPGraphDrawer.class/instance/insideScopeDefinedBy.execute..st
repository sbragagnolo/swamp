visiting
insideScopeDefinedBy:aRoassalElement  execute: aBlock
	stack push: aRoassalElement.
	aBlock cull: stack second cull: stack first.
	^ stack pop