as yet unclassified
updateWith: optionalDictionary
	| response |
	response := self httpClient
		formAddAll: optionalDictionary;
		url: self updateUrl;
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey partially: true ]