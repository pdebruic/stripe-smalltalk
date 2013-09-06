as yet unclassified
createWith: aDictionary
	| response |
	response := self httpClient postFormData: aDictionary.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | 
			self refreshFrom: parsedResponse with: self class secretApiKey.
			self class instances add: self.
			created := DateAndTime now ]