as yet unclassified
updateWith: optionalDictionary
	| response client |
	client := self stripeClient.
	client formAddAll: optionalDictionary.
	response := client
		url: self updateUrl;
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey partially: true ]