as yet unclassified
capture: anAmount withFee: anApplicationFee
	| formData response |
	formData := JsonObject new.
	anAmount notNil
		ifTrue: [ formData at: 'amount' put: anAmount asString ].
	anApplicationFee notNil
		ifTrue: [ formData at: 'application_fee' put: anApplicationFee asString ].
	response := self httpClient post: self captureUrl formData: formData.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey ]