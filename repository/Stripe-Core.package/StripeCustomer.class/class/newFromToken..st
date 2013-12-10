instance creation
newFromToken: aToken
	^ self new createFromToken: aToken with: JsonObject new