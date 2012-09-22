as yet unclassified
createFromCard: aCard with: optionalDictionary
	| dict |
	dict := Dictionary new.
	optionalDictionary keysAndValuesDo: [ :name :option | dict at: name put: option ].
	dict at: 'card[number]' put: aCard number.
	dict at: 'card[cvc]' put: aCard cvc.
	dict at: 'card[exp_month]' put: aCard expirationMonth.
	dict at: 'card[exp_year]' put: aCard expirationYear.
	aCard addressLineOne notNil
		ifTrue: [ dict at: 'card[address_line1]' put: aCard addressLineOne ].
	aCard addressZip notNil
		ifTrue: [ dict at: 'card[address_zip]' put: aCard addressZip ].
	^ self createWith: dict