as yet unclassified
convert: aResponse toStripeObjectUsing: anAPIKey 
	^ aResponse isDictionary
		ifTrue: [(StripeObjectDictionary
				at: (aResponse
						at: 'object'
						ifAbsent: ['object']))
				newFrom: aResponse
				using: anAPIKey]
		ifFalse: [aResponse isCollection
				ifTrue: [
					aResponse
						collect: [:each | self convert: each toStripeObjectUsing: anAPIKey]]
				ifFalse: [aResponse]]