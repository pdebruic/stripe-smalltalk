invoices
getUpcomingInvoice
	| response |
	response := self httpClient
		url: StripeInvoice url;
		addToPath: 'upcoming';
		queryAt: 'customer' put: self id;
		get.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: parsedResponse toStripeObjectUsing: self class secretApiKey ]