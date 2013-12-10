as yet unclassified
charge: anAmount to: aCard with: aDescription
	| dict charge |
	dict := JsonObject new.
	anAmount asNumber < 50
		ifTrue: [ StripeError signal: 'minimum charge is 50 cents' ].
	dict at: 'amount' put: anAmount asString.	"amount must be in pennies e.g. 99 equals $0.99"
	dict at: 'description' put: (description := aDescription).
	dict at: 'currency' put: self class billingCurrency.
	dict at: 'card[number]' put: aCard number.
	dict at: 'card[cvc]' put: aCard cvc.
	dict at: 'card[exp_month]' put: aCard expirationMonth.
	dict at: 'card[exp_year]' put: aCard expirationYear.
	aCard addressLineOne notNil
		ifTrue: [ dict at: 'card[address_line1]' put: aCard addressLineOne ].
	aCard addressZip notNil
		ifTrue: [ dict at: 'card[address_zip]' put: aCard addressZip ].
	self createWith: dict