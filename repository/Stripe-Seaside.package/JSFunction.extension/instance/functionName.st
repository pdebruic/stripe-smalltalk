*stripe-seaside
functionName
	^ functionNamed isNil
		ifTrue: [ 'function (' ]
		ifFalse: [ 'function ' , functionNamed , '(' ]