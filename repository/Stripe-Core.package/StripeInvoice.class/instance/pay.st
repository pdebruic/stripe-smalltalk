as yet unclassified
pay
	| response |
	response := self httpClient
		url: self url , '/pay';
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | 
			self refreshFrom: parsedResponse with: self class secretApiKey.
			self class instances add: self.
			created := DateAndTime now ]