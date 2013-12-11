as yet unclassified
refund: anAmount 
	| response |
	anAmount isNil
		ifTrue: [response := self httpClient url: self refundUrl;
						 post]
		ifFalse: [| formData |
			formData := JsonObject new.
			formData at: 'amount' put: anAmount asString.
			response := self httpClient post: self refundUrl formData: formData].
	
	self
		handleResponse: response
		andIfSuccessful: [:parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey]