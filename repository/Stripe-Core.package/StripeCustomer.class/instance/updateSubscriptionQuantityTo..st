subscriptions
updateSubscriptionQuantityTo: aNumber
	| response dict |
	dict := JsonObject new.
	dict at: 'quantity' put: aNumber asString.
	response := self httpClient post: self subscriptionUrl formData: dict.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self setValue: 'subscription' to: (StripeSubscription new refreshFrom: parsedResponse with: self class secretApiKey) ]