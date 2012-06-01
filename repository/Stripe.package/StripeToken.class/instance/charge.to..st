as yet unclassified
charge: anAmount to: aCard
	| dict charge |
	dict := Dictionary new.
	dict at: 'amount' put: anAmount.	"amount must be in pennies e.g. 99 equals $0.99"
	dict at: 'currency' put: 'usd'.	"they only support USD right now`"
	dict at: 'card[number]' put: aCard number.
	dict at: 'card[cvc]' put: aCard cvc.
	dict at: 'card[exp_month]' put: aCard exp_month.
	dict at: 'card[exp_year]' put: aCard exp_year.
	aCard address_line1 notNil
		ifTrue: [ dict at: 'card[address_line1]' put: aCard address_line1 ].
	aCard address_zip notNil
		ifTrue: [ dict at: 'card[address_zip]' put: aCard address_zip ].
	self createWith: dict