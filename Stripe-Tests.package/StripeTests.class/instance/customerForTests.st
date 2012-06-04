as yet unclassified
customerForTests
	| dict |
	dict := Dictionary new.
	dict at: 'email' put: 'me@example.com'.
	dict at: 'description' put: 'my name'.
	^ StripeCustomer newFromCard: card with: dict