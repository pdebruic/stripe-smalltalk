as yet unclassified
updateDescription: aDescription
	| formData |
	formData := JsonObject new.
	formData at: 'description' put: aDescription.
	self updateWith: formData