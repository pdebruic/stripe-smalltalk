as yet unclassified
retrieveLast: aCount starting: anOffset ofType: anEventType
	| response client parsed |
	client := ZnClient new logToTranscript.
	client username: self secretApiKey password: ''.
	client url: self url.
	client queryAt: 'count' put: aCount asString.
	client queryAt: 'offset' put: anOffset asString.
	anEventType isEmptyOrNil
		ifFalse: [ client queryAt: 'type' put: anEventType ].
	response := client get.
	parsed :=  Json readFrom: response asString readStream.
	^ StripeSystem convert: (parsed at: 'data') toStripeObjectUsing: self secretApiKey