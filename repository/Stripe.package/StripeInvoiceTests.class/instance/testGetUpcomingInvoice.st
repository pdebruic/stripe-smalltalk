as yet unclassified
testGetUpcomingInvoice
	| cust invoice |
	cust := StripeCustomer newFromCard: card.
	invoice := cust getUpcomingInvoice.
	self assert: invoice className equals: 'StripeInvoice'