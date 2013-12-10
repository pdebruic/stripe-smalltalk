as yet unclassified
charge: anAmount to: aCustomer
	| dict |
	dict := JsonObject new.
	dict at: 'customer' put: aCustomer id.
	dict at: 'amount' put: anAmount asString.
	dict at: 'currency' put: self billingCurrency.
	^ self newFrom: dict