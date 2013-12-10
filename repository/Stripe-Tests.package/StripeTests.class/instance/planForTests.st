as yet unclassified
planForTests
	| formData |
	formData := JsonObject new.
	formData at: 'id' put: 'small'.
	formData at: 'amount' put: '1000'.
	formData at: 'currency' put: 'usd'.
	formData at: 'interval' put: 'month'.
	formData at: 'name' put: 'Small Plan'.
	formData at: 'trial_period_days' put: '30'.
	^ StripePlan newFrom: formData