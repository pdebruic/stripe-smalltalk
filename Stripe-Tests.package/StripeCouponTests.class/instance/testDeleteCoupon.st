as yet unclassified
testDeleteCoupon
	| coupon |
	coupon := self couponForTests.
	self assert: coupon id equals: '10_pct'.
	coupon deleteFromStripe.
	self should: [ coupon retrieveFromStripe ] raise: StripeError