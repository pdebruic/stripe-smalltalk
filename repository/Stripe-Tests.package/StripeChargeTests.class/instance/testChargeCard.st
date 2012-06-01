as yet unclassified
testChargeCard
	| charge |
	charge := StripeCharge newChargeFor: amount toCard: card.
	self assert: charge values notEmpty.
	self assert: (charge values at: 'amount') equals: 100.
	self assert: (charge values at: 'livemode') equals: false.
	self assert: (charge values at: 'object') equals: 'charge'.
	self assert: (charge values at: 'paid') equals: true.
	self assert: (charge values at: 'refunded') equals: false.
	self assert: (charge values at: 'card') className equals: 'StripeCard'.
	self assert: (StripeCharge instances includes: charge).
	StripeCharge instances remove: charge ifAbsent: [  ]