as yet unclassified
testCreatePlan
	|dict plan|
	dict:=Dictionary new.
	dict at:'id' put: 'small'.
	dict at:'amount' put: '1000'.
	dict at:'currency' put: 'usd'.
	dict at: 'interval' put: 'month'.
	dict at: 'name' put: 'Small Plan'.
	dict at:'trial_period_days' put: ((DateAndTime today + 30 days) asUnixTime ) asString.
	plan:=StripePlan newFrom: dict.
	self assert: plan id equals: 'small'.
	plan deleteFromStripe.