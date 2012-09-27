javascript
createToken
	^ JSStream on: 'Stripe.createToken(' , self createTokenData , ', ' , self responseHandlerFunctionName , ')'