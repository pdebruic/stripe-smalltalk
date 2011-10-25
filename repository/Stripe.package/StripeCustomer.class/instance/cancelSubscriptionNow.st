subscriptions
cancelSubscriptionNow
	|response client parsed |
	client:= (ZnNeoClient new) logToTranscript.
	client username: self class secretApiKey password:''.
	response:=(client url: self  subscriptionUrl; delete) .
	parsed:=JSJsonParser parse: response asString readStream. 

	^(parsed at:'ended_at') notNil