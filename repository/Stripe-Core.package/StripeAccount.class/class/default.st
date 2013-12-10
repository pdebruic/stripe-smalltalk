as yet unclassified
default
	| response client parsed |
	client := self httpAPIClientClass new.
	client username: self secretApiKey password: ''.
	client url: self url.
	response := client get.
	parsed := Json readFrom: response asString readStream.
	parsed
		at: 'error'
		ifPresent: [ :v | ^ nil ]
		ifAbsent: [ ^ StripeSystem convert: parsed toStripeObjectUsing: self secretApiKey ]