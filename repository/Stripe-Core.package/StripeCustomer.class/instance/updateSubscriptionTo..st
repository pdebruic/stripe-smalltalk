subscriptions
updateSubscriptionTo: aPlan
	| response dict |
	dict := Dictionary new.
	dict at: 'plan' put: aPlan id.
	response := self httpClient post: self subscriptionUrl formData: dict.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self setValue: 'subscription' to: (StripeSubscription new refreshFrom: parsedResponse with: self class secretApiKey) ]