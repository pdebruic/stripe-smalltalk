as yet unclassified
refund: anAmount
	|response client parsed dict |
	client:= (ZnNeoClient new) logToTranscript.
	client username: self class secretApiKey password:''.
	"client formAt:'id' put: self id."
	client formAt:'amount' put: anAmount asString.
	response:=(client url: self  refundUrl; post) .
	parsed:=JSJsonParser parse: response asString readStream. 
	
	self refreshFrom: parsed with: self class secretApiKey . 
	
	
	