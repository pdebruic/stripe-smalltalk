*stripe-seaside
functionName
	^ functionName isNil
		ifTrue: [ 'function (' ]
		ifFalse: [ 'function ' , functionName , '(' ]