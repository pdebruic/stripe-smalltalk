as yet unclassified
testSubscribeAndRemoveCustomer
	customer updateSubscriptionPlanTo: plan.
	self assert: customer subscription plan equals: plan