as yet unclassified
refund: anAmount
	| response |
	response := self httpClient
		formAt: 'amount' put: anAmount asString;
		url: self refundUrl;
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey ]