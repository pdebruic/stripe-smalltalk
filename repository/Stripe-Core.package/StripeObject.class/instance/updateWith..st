as yet unclassified
updateWith: optionalDictionary
	| response |
	response := self httpClient post: self url formData: optionalDictionary.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey partially: true ]