as yet unclassified
createFromToken: aToken with: optionalDictionary
	| dict |
	dict := JsonObject new.
	optionalDictionary keysAndValuesDo: [ :name :option | dict at: name put: option ].
	dict at: 'card' put: aToken.
	^ self createWith: dict