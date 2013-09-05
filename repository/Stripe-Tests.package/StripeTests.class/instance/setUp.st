as yet unclassified
setUp
	card := StripeCard new
		number: '4242424242424242';
		expirationMonth: Month current next index asString;
		expirationYear: Year current next year asString;
		cvc: '123';
		addressLineOne: '123 Main St';
		addressZip: '10101'.
	amount := '100'