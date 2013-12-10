as yet unclassified
getLines
	| response client |
	response := self httpClient get: self url , '/lines'.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: parsedResponse toStripeObjectUsing: self class secretApiKey ]