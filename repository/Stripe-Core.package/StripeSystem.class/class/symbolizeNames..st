as yet unclassified
symbolizeNames: anObject
	| returnValue |
	anObject isDictionary
		ifTrue: [ 
			returnValue := JsonObject new.
			anObject keysAndValuesDo: [ :key :val | returnValue at: key asSymbol put: (self symbolizeNames: val) ] ]
		ifFalse: [ 
			anObject isCollection
				ifTrue: [ returnValue := anObject collect: [ :each | self symbolizeNames: each ] ]
				ifFalse: [ returnValue := anObject ] ].
	^ returnValue