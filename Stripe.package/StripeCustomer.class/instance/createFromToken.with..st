as yet unclassified
createFromToken: aToken with: optionalDictionary
	| dict |
	dict := Dictionary new.
	optionalDictionary keysAndValuesDo: [ :name :option | dict at: name put: option ].
	dict at: 'card' put: aToken.
	^ self createWith: dict