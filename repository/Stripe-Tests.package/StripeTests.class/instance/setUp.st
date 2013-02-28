as yet unclassified
setUp
	card := StripeCard new
		number: '4242424242424242';
		expirationMonth: Date today month next index asString;
		expirationYear: (Date today year + 1) asString;
		cvc: '123';
		addressLineOne: '123 Main St';
		addressZip: '10101'.
	amount := '100'