as yet unclassified
newForCustomer: aStripeCustomer
	| formData |
	formData := JsonObject new.
	formData at: 'customer_id' put: aStripeCustomer id.
	self new createWith: formData