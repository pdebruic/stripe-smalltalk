as yet unclassified
objectsToIds: aCollectionOrObject
	| returnValue |
	aCollectionOrObject isDictionary
		ifTrue: [ 
			returnValue := JsonObject new.
			aCollectionOrObject keysAndValuesDo: [ :key :val | returnValue at: key put: (self objectsToIds: val) ] ]
		ifFalse: [ 
			returnValue := (aCollectionOrObject isCollection and: [ aCollectionOrObject isString not ])
				ifTrue: [ aCollectionOrObject collect: [ :each | self objectsToIds: each ] ]
				ifFalse: [ aCollectionOrObject ] ].
	^ returnValue