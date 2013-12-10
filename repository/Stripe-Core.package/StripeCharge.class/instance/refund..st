as yet unclassified
refund: anAmount
	| response formData |
	formData:=JsonObject new.
	formData at:'amount' put: anAmount asString .
	response := self httpClient
		post: self refundUrl formData: formData .
		
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey ]