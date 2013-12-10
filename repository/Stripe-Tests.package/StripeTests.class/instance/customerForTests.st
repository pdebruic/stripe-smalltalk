as yet unclassified
customerForTests
	| formData |
	formData := JsonObject new.
	formData at: 'email' put: 'me@example.com'.
	formData at: 'description' put: 'my name'.
	^ StripeCustomer newFromCard: card with: formData