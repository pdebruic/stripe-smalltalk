invoices
getUpcomingInvoice
	| response |
	response := self httpClient
		url: StripeInvoice url;
		queryAt: 'customer' put: self id;
		addToPath: 'upcoming';
		get.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: parsedResponse toStripeObjectUsing: self class secretApiKey ]