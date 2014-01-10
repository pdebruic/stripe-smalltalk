instance creation
newWithDescription: aDescription
	| jsonObj |
	jsonObj := JsonObject new.
	jsonObj at: 'description' put: aDescription.
	^ self new createWith: jsonObj