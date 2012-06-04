as yet unclassified
testRetrieveRecentCharges
	| charges retrievedCharge chargeId |
	charges := StripeCharge retrieveLast: 3 starting: 0.
	self assert: charges size equals: 3