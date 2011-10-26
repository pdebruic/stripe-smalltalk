subscriptions
cancelSubscriptionAtEndOfCurrentPeriod
	| response client |
	client := self stripeClient.
	client queryAt: 'at_period_end' put: true.
	response := client
		url: self subscriptionUrl;
		delete.
	self handleResponse: response andIfSuccessful: [ :parsedResponse | ^ parsedResponse at: 'status' = 'cancelled' ]