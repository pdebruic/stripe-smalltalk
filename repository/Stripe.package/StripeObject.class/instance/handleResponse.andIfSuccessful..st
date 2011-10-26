as yet unclassified
handleResponse: aResponse andIfSuccessful: aOneArgBlock
	| parsedResponse |
	parsedResponse := self parseStripeResponse: aResponse.
	parsedResponse
		at: 'error'
		ifPresent: [ :v | StripeError new signal: ((parsedResponse at: 'error') at: 'message') ]
		ifAbsent: [ ^ aOneArgBlock value: parsedResponse ]