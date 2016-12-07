as yet unclassified
consumerData
	consumerData isNil ifTrue:[GCSystem testingStripe ifTrue:[self testSession] ifFalse:[self liveSession]].
	^consumerData