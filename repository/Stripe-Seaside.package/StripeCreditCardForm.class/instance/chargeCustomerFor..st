rendering
chargeCustomerFor: aStripeToken
	| cust charge |
	Transcript
		cr;
		show: 'New Token: ' , aStripeToken;
		cr.
	cust := StripeCustomer newFromToken: aStripeToken.
	charge := StripeCharge newChargeFor: self amount toCustomer: cust