as yet unclassified
charge: anAmount to: aCard with: aDescription
	| dict charge |
	dict := Dictionary new.
	dict at: 'amount' put: anAmount asString.	"amount must be in pennies e.g. 99 equals $0.99"
	dict at: 'description' put: (description := aDescription).
	dict at: 'currency' put: 'usd'.	"they only support USD right now`"
	dict at: 'card[number]' put: aCard number.
	dict at: 'card[cvc]' put: aCard cvc.
	dict at: 'card[exp_month]' put: aCard expirationMonth.
	dict at: 'card[exp_year]' put: aCard expirationYear.
	aCard addressLineOne notNil
		ifTrue: [ dict at: 'card[address_line1]' put: aCard addressLineOne ].
	aCard addressZip notNil
		ifTrue: [ dict at: 'card[address_zip]' put: aCard addressZip ].
	self createWith: dict