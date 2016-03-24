subscriptions
updateSubscriptionQuantityTo: aNumber
	| response dict |
	dict := JsonObject new.
	dict at: 'quantity' put: aNumber asString.
	dict at: 'plan' put: self plan.
	response := self httpClient post: self subscriptionUrl formData: dict asJson.
	self
		handleResponse: response
		andIfSuccessful: [ :parsedResponse | self setValue: 'subscription' to: (StripeSubscription new refreshFrom: parsedResponse with: self class secretApiKey) ]