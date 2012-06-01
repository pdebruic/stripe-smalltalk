as yet unclassified
createWith: aDictionary
	| response |
	response := self httpClient
		formAddAll: aDictionary;
		url: self class url;
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | 
			self refreshFrom: parsedResponse with: self class secretApiKey.
			self class instances add: self.
			created := DateAndTime now ]