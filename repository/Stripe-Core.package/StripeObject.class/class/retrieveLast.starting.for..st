retrieve
retrieveLast: aCount starting: anOffset for: aCustomer
	| response client parsed |
	client := self httpAPIClientClass new.
	client username: self secretApiKey password: ''.
	client url: self url.
	client queryAt: 'count' put: aCount asString.
	client queryAt: 'offset' put: anOffset asString.
	aCustomer isEmptyOrNil
		ifFalse: [ client queryAt: 'customer' put: aCustomer ].
	response := client get.
	StripeSystem
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: (parsedResponse at: 'data') toStripeObjectUsing: self secretApiKey ]