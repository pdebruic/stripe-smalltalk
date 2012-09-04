as yet unclassified
createFromCard: aCard with: optionalDictionary
	| dict |
	dict := Dictionary new.
	optionalDictionary keysAndValuesDo: [ :name :option | dict at: name put: option ].
	dict at: 'card[number]' put: aCard number.
	dict at: 'card[cvc]' put: aCard cvc.
	dict at: 'card[exp_month]' put: aCard exp_month.
	dict at: 'card[exp_year]' put: aCard exp_year.
	aCard address_line1 notNil
		ifTrue: [ dict at: 'card[address_line1]' put: aCard address_line1 ].
	aCard address_zip notNil
		ifTrue: [ dict at: 'card[address_zip]' put: aCard address_zip ].
	^ self createWith: dict