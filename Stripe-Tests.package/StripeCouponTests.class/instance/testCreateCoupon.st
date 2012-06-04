as yet unclassified
testCreateCoupon
	| coupon |
	coupon := self couponForTests.
	self assert: coupon id equals: '10_pct'.
	coupon deleteFromStripe