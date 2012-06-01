retrieve
retrieveLast: aCount starting: anOffset for: aCustomer
	| response client parsed |
	client := ZnClient new logToTranscript.
	client username: self secretApiKey password: ''.
	client url: self url.
	client queryAt: 'count' put: aCount asString.
	client queryAt: 'offset' put: anOffset asString.
	aCustomer isEmptyOrNil
		ifFalse: [ client queryAt: 'customer' put: aCustomer ].
	response := client get.
	parsed := JSJsonParser parse: response asString readStream.
	^ StripeSystem convert: (parsed at: 'data') toStripeObjectUsing: self secretApiKey