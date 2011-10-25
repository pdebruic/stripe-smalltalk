subscriptions
cancelSubscriptionAtEndOfCurrentPeriod
	|response client parsed |
	client:= (ZnNeoClient new) logToTranscript.
	client username: self class secretApiKey password:''.
	client queryAt:'at_period_end' put: true.
	response:=(client url: self  subscriptionUrl; delete) .
	parsed:=JSJsonParser parse: response asString readStream. 

	^parsed at:'status' = 'cancelled'