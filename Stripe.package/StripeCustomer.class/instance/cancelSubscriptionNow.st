subscriptions
cancelSubscriptionNow
	| response |
	response := self httpClient
		url: self subscriptionUrl;
		delete.
	self handleResponse: response andIfSuccessful: [ :parsedResponse | ^ (parsedResponse at: 'ended_at') notNil ]