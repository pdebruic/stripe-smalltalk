instance-creation
charge: anAmount toCustomer: aCustomer with: aDescription
	| dict  |
	dict := JsonObject new.
	anAmount asNumber < 50
		ifTrue: [ StripeError signal: 'minimum charge is 50 cents' ].
	dict at: 'amount' put: (amount:=anAmount).	"amount must be in pennies e.g. 99 equals $0.99"
	dict at: 'customer' put: aCustomer id.
	dict at: 'description' put: (description := aDescription).
	dict at: 'currency' put: self class billingCurrency.
	self createWith: dict