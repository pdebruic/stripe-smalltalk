subscriptions
cancelSubscriptionAtEndOfCurrentPeriod
	| response client |
	response := self httpClient
		queryAt: 'at_period_end' put: true;
		url: self subscriptionUrl;
		delete.
	self handleResponse: response andIfSuccessful: [ :parsedResponse | ^ parsedResponse at: 'status' = 'cancelled' ]