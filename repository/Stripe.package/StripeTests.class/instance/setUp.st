as yet unclassified
setUp
	card:=StripeCard new number:'4242424242424242';
					exp_month: (Date today month next index) asString ;
					exp_year:( Date today year + 1) asString;
					cvc: '123';
					address_line1: '123 Main St';
					address_zip:'10101'.
	amount:='100'.