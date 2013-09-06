accessing
httpClient
	| client |
	client := self httpAPIClientClass new.
	client
		url: self class url;
		username: self class secretApiKey password: ''.
	StripeSystem logStripeClientToTranscript
		ifTrue: [ client logToTranscript ].
	^ client