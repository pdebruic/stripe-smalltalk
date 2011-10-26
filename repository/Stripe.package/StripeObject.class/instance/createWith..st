as yet unclassified
createWith: aDictionary
	| response client |
	client := self stripeClient client formAddAll: aDictionary.
	response := client
		url: self class url;
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | 
			self refreshFrom: parsedResponse with: self class secretApiKey.
			self class instances add: self ]