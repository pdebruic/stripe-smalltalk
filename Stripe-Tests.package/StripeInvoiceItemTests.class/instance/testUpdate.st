as yet unclassified
testUpdate
	| cust item dict |
	cust := StripeCustomer newFromCard: card.
	item := StripeInvoiceItem charge: 10 to: cust.
	self assert: item className equals: 'StripeInvoiceItem'.
	self assert: item amount equals: 10.
	item updateAmountTo: 25.
	self assert: item amount equals: 25