as yet unclassified
refund: anAmount
	| response client  |
	client := self stripeClient.
	client formAt: 'amount' put: anAmount asString.
	response := client
		url: self refundUrl;
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey ]