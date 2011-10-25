as yet unclassified
setUp
	|dict|
	super setUp.
	dict:=Dictionary new.
	dict at:'id' put: '10_pct'.
	dict at:'percent_off' put: '10'.
	dict at:'duration' put: 'repeating'.
	dict at: 'duration_in_months' put: '3'.
	dict at: 'max_redemptions' put: '10'.
	dict at:'redeem_by' put: ((DateAndTime today + 60 days) asUnixTime ) asString.
	coupon:=StripeCoupon newFrom: dict.
		dict:=Dictionary new.
	dict at:'id' put: 'small'.
	dict at:'amount' put: '1000'.
	dict at:'currency' put: 'usd'.
	dict at: 'interval' put: 'month'.
	dict at: 'name' put: 'Small Plan'.
	dict at:'trial_period_days' put: ((DateAndTime today + 30 days) asUnixTime ) asString.
	plan:=StripePlan newFrom: dict.