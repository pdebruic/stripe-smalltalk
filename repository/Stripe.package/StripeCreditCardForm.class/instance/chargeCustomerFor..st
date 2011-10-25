rendering
chargeCustomerFor: aStripeToken
	|cust charge|
	cust:=StripeCustomer newFromToken: aStripeToken. 
	charge:=StripeCharge newChargeFor: self amount toCustomer: cust
