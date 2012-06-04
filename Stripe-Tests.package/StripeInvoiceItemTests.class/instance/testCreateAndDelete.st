as yet unclassified
testCreateAndDelete
	| cust item |
	cust := StripeCustomer newFromCard: card.
	item := StripeInvoiceItem charge: 10 to: cust.
	self assert: item className equals: 'StripeInvoiceItem'.
	self assert: item deleteFromStripe