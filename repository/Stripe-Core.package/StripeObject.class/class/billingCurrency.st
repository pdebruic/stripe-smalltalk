strip configuration
billingCurrency
	BillingCurrency isNil ifTrue: [ BillingCurrency := self defaultBillingCurrency ].
	^ BillingCurrency