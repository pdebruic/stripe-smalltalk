deleting
deleteFromStripe
	|response client parsed |
	client:= (ZnNeoClient new) logToTranscript.
	client username: self class secretApiKey password:''.
	response:=(client url: self  deleteUrl; delete) .
	parsed:=JSJsonParser parse: response asString readStream. 

	^parsed at:'deleted'