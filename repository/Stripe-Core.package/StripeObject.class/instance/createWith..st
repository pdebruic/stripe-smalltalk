as yet unclassified
createWith: aDictionary
	| response |
	response := self httpClient post: self class url formData: aDictionary.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | 
			self refreshFrom: parsedResponse with: self class secretApiKey.
			self class instances add: self.
			created := DateAndTime now ]