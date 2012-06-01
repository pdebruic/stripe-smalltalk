as yet unclassified
testGetUpcomingInvoice
	| invoice |
	customer updateSubscriptionTo: plan.
	invoice := customer getUpcomingInvoice.
	self assert: invoice className equals: 'StripeInvoice'