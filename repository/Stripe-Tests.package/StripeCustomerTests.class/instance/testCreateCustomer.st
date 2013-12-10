as yet unclassified
testCreateCustomer
	| cust formData |
	cust := StripeCustomer newFromCard: card.
	StripeCustomer instances remove: cust ifAbsent: [  ].
	formData := JsonObject new.
	formData at: 'email' put: 'me@example.com'.
	formData at: 'coupon' put: '10_pct'.
	formData at: 'plan' put: 'small'.
	formData at: 'description' put: 'my name'.
	formData at: 'trial_end' put: (DateAndTime today + 30 days) asUnixTime asString.
	cust := StripeCustomer newFromCard: card with: formData.
	self assert: cust email equals: 'me@example.com'.
	self assert: cust coupon id equals: '10_pct'.
	self assert: cust plan id equals: 'small'.
	self assert: cust description equals: 'my name'.
	self assert: cust trialEnd equals: (DateAndTime today + 30 days) asUnixTime	"StripeCustomer instances remove: cust ifAbsent:[] ."