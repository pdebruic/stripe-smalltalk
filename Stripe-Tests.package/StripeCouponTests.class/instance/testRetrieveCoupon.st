as yet unclassified
testRetrieveCoupon
	| dict coupon newCoupon |
	coupon := self couponForTests.
	self assert: coupon id equals: '10_pct'.
	newCoupon := coupon retrieveFromStripe.
	self assert: newCoupon id equals: '10_pct'