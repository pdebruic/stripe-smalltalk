as yet unclassified
updateWith: formData
	| response |
	response := self httpClient post: self url formData: formData.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey partially: true ]