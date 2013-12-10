cards
deleteCard: aStripeCard
	| response |
	response := self httpClient
		url: self cardUrl;
		addToPath: aStripeCard id;
		delete.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self cards removeAllSuchThat: [ :each | each id = aStripeCard id ] ]