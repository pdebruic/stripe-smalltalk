invoices
getUpcomingInvoice
	| response |
	response := self httpClient
		url: self invoiceUrl;
		queryAt: 'customer' put: self id;
		get.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: parsedResponse toStripeObjectUsing: self class secretApiKey ]