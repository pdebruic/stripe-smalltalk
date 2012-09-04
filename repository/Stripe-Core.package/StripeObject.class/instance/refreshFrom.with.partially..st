as yet unclassified
refreshFrom: aResponse with: anApiKey partially: aBoolean
	| removedKeys |
	aResponse
		at: 'error'
		ifPresent: [ :v | StripeError signal: ((aResponse at: 'error') at: 'message') ]
		ifAbsent: [ 
			apiKey := anApiKey.
			removedKeys := aBoolean
				ifTrue: [ Set new ]
				ifFalse: [ Set newFrom: (values keys difference: aResponse keys) ].
			unsavedValues := Set newFrom: aResponse keys.
			removedKeys
				do: [ :each | 
					values removeKey: each.
					transientValues add: each.
					unsavedValues remove: each ].
			unsavedValues copy
				do: [ :each | 
					self setValue: each to: (StripeSystem convert: (aResponse at: each) toStripeObjectUsing: anApiKey).
					transientValues remove: each ifAbsent: [  ].
					unsavedValues remove: each ifAbsent: [  ] ] ]