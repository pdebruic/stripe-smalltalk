as yet unclassified
testCreateCustomer
	| cust dict |
	cust := StripeCustomer newFromCard: card.
	StripeCustomer instances remove: cust ifAbsent: [  ].
	dict := Dictionary new.
	dict at: 'email' put: 'me@example.com'.
	dict at: 'coupon' put: '10_pct'.
	dict at: 'plan' put: 'small'.
	dict at: 'description' put: 'my name'.
	dict at: 'trial_end' put: (DateAndTime today + 30 days) asUnixTime asString.
	cust := StripeCustomer newFromCard: card with: dict.
	self assert: cust email equals: 'me@example.com'.
	self assert: cust coupon id equals: '10_pct'.
	self assert: cust plan id equals: 'small'.
	self assert: cust description equals: 'my name'.
	self assert: cust trialEnd equals: (DateAndTime today + 30 days) asUnixTime	"StripeCustomer instances remove: cust ifAbsent:[] ."