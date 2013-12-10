as yet unclassified
current
	| response client |
	client := self httpAPIClientClass new.
	client username: self secretApiKey password: ''.
	client url: self url.
	response := client get.
	StripeSystem
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: parsedResponse toStripeObjectUsing: self secretApiKey ]