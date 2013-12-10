as yet unclassified
updateDispute: anExplanation
	| formData response |
	formData := JsonObject new.
	formData at: 'evidence' put: anExplanation.
	response := self httpClient post: self url , '/dispute' formData: formData.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey partially: true ]