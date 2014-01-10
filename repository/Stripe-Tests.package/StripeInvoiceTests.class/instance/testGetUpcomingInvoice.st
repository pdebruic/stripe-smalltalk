as yet unclassified
testGetUpcomingInvoice
	| invoice |
	customer updateSubscriptionPlanTo: plan.
	invoice := customer getUpcomingInvoice.
	self assert: invoice className equals: 'StripeInvoice'