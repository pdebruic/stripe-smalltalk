as yet unclassified
testUpdateCustomer
	| cust formData |
	formData := JsonObject new.
	formData at: 'email' put: 'me@example.com'.
	formData at: 'coupon' put: '10_pct'.
	formData at: 'plan' put: 'small'.
	formData at: 'description' put: 'my name'.
	formData at: 'trial_end' put: (DateAndTime today + 30 days) asUnixTime asString.
	cust := StripeCustomer newFromCard: card with: formData.
	self assert: cust email equals: 'me@example.com'.
	formData := JsonObject new.
	formData at: 'email' put: 'you@example.com'.
	cust := cust updateWith: formData.
	self assert: cust email equals: 'you@example.com'	"StripeCustomer instances remove: cust ifAbsent:[] ."