accessing
encompassingRectangle
	^ group ifEmpty: [ 0 @ 0 corner: 0 @ 0 ] ifNotEmpty: [ :elements | Rectangle merging: (elements collect: #encompassingRectangle) ]