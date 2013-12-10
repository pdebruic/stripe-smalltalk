as yet unclassified
close
	| formData |
	formData := JsonObject new.
	formData at: 'closed' put: 'true'.
	self updateWith: formData