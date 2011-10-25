as yet unclassified
testCreateCoupon
	|dict coupon|
	dict:=Dictionary new.
	dict at:'id' put: '10_pct'.
	dict at:'percent_off' put: '10'.
	dict at:'duration' put: 'repeating'.
	dict at: 'duration_in_months' put: '3'.
	dict at: 'max_redemptions' put: '10'.
	dict at:'redeem_by' put: ((DateAndTime today + 60 days) asUnixTime ) asString.
	coupon:=StripeCoupon newFrom: dict.
	self assert: coupon id equals: '10_pct'.
	coupon deleteFromStripe.