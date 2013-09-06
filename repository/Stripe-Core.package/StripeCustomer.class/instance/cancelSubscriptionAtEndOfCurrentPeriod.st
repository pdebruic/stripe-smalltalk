subscriptions
cancelSubscriptionAtEndOfCurrentPeriod
	| response client |
	response := self httpClient
		url: self subscriptionUrl;
		queryAt: 'at_period_end' put: true;
		delete.
	self handleResponse: response andIfSuccessful: [ :parsedResponse | ^ parsedResponse at: 'status' = 'cancelled' ]