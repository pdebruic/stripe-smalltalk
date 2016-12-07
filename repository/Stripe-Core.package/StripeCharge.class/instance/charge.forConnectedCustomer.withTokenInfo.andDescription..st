instance-creation
charge: anAmount forConnectedCustomer: aCustomer withTokenInfo: tokenJson andDescription: aDescription
	| dict |
	amount := anAmount asNumber.
	1 halt.
	dict := JsonObject new.
	amount < 50
		ifTrue: [ StripeError signal: 'minimum charge is 50 cents' ].
	dict at: 'amount' put: amount.	"amount must be in pennies e.g. 99 equals $0.99"
	dict at: 'source' put: tokenJson.
	dict at: 'application_fee' put: amount // 100.
	dict at: 'description' put: (description := aDescription).
	"dict at: 'currency' put: self class billingCurrency."
	self connectCreateWith: dict for: aCustomer