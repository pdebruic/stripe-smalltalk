subscriptions
cancelSubscriptionNow
	| response client |
	client := self stripeClient.
	response := client
		url: self subscriptionUrl;
		delete.
	self handleResponse: response andIfSuccessful: [ :parsedResponse | ^ (parsedResponse at: 'ended_at') notNil ]