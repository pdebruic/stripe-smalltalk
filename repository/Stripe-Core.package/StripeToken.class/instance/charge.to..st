as yet unclassified
charge: anAmount to: aCard
	| dict charge |
	dict := Dictionary new.
	"amount is deprecated, only some accounts create earlier can still use it here"
	"dict at: 'amount' put: anAmount."
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