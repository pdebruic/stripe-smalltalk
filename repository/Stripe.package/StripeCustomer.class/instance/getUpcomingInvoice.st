invoices
getUpcomingInvoice
	| response client |
	client := self stripeClient.
	client url: self invoiceUrl.
	client queryAt: 'customer' put: self id.
	response := client get.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | ^ StripeSystem convert: parsedResponse toStripeObjectUsing: self class secretApiKey ]