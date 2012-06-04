as yet unclassified
testSubscribeAndRemoveCustomer
	customer updateSubscriptionTo: plan.
	self assert: customer subscription plan equals: plan