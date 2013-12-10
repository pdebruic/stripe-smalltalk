as yet unclassified
getLines
	| response client |
	response := self httpClient
		url: self url , '/lines';
		get.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: parsedResponse toStripeObjectUsing: self class secretApiKey ]