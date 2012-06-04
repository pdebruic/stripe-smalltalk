as yet unclassified
charge: anAmount toCustomer: aCustomer with: aDescription
	| dict charge |
	dict := Dictionary new.
	dict at: 'amount' put: anAmount.	"amount must be in pennies e.g. 99 equals $0.99"
	dict at: 'customer' put: aCustomer id.
	dict at: 'description' put: (description := aDescription).
	dict at: 'currency' put: 'usd'.	"they only support USD right now`"
	self createWith: dict