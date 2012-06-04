as yet unclassified
retrieveWithId: anId
	| response client parsed |
	client := ZnClient new logToTranscript.
	client username: self secretApiKey password: ''.
	client url: self url , '/' , anId.
	response := client get.
	parsed := Json readFrom: response asString readStream.
	parsed
		at: 'error'
		ifPresent: [ :v | ^ nil ]
		ifAbsent: [ ^ StripeSystem convert: parsed toStripeObjectUsing: self secretApiKey ]