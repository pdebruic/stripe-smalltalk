subscriptions
updateSubscriptionTo: aDictionary
	| response client |
	client := self stripeClient.
	client formAddAll: aDictionary.
	response := client
		url: self subscriptionUrl;
		post.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self refreshFrom: parsedResponse with: self class secretApiKey partially: true ]