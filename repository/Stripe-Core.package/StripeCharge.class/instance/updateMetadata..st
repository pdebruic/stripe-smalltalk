as yet unclassified
updateMetadata: someMetadata
	| formData |
	formData := JsonObject new.
	someMetadata notNil
		ifTrue: [ formData metadata: someMetadata ].
	self updateWith: formData