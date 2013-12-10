as yet unclassified
retrieveLast: aCount starting: anOffset ofType: anEventType
	| response client parsed |
	client := self httpAPIClientClass new logToTranscript.
	client username: self secretApiKey password: ''.
	client url: self url.
	client queryAt: 'count' put: aCount asString.
	client queryAt: 'offset' put: anOffset asString.
	anEventType isEmptyOrNil
		ifFalse: [ client queryAt: 'type' put: anEventType ].
	response := client get.
	StripeSystem
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: (parsedResponse at: 'data') toStripeObjectUsing: self secretApiKey ]