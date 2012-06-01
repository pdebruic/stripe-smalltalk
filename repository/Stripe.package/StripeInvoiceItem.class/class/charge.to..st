as yet unclassified
charge: anAmount to: aCustomer
	| dict |
	dict := Dictionary new.
	dict at: 'customer' put: aCustomer id.
	dict at: 'amount' put: anAmount asString.
	dict at: 'currency' put: 'usd'.
	^ self newFrom: dict