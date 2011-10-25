as yet unclassified
createWith: aDictionary
	|response client parsed |
	client:= (ZnNeoClient new) logToTranscript.
	client username: self class secretApiKey password:''.
	client formAddAll: aDictionary.
	response:=(client url: self  class url; post) .
	parsed:=JSJsonParser parse: response asString readStream. 
	
	self refreshFrom: parsed with: self class secretApiKey . 

	self class instances add: self.
	
	