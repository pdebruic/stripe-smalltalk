as yet unclassified
planForTests
	| dict |
	dict := Dictionary new.
	dict at: 'id' put: 'small'.
	dict at: 'amount' put: '1000'.
	dict at: 'currency' put: 'usd'.
	dict at: 'interval' put: 'month'.
	dict at: 'name' put: 'Small Plan'.
	dict at: 'trial_period_days' put: '30'.
	^ StripePlan newFrom: dict