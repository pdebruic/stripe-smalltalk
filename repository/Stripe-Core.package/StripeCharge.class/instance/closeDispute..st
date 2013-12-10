as yet unclassified
closeDispute: aDispute
	| response |
	response := self httpClient
		url: self url , '/dispute/close';
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey partially: true ]